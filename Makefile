OUTPUTDIR=public
SSH_TARGET=cloud:/home/andrew/sites/datavizs21.classes/public_html

.PHONY : all clean serve build deploy zip_projects pdf_slides

all: zip_projects build pdf_slides


# Slides to PDF -----------------------------------------------------------
TO_PDF = $(wildcard static/slides/*.html)
PDF_TARGETS = $(addsuffix .pdf,$(basename $(TO_PDF)))

static/slides/%.pdf: static/slides/%.html
	Rscript R/pdfize.R $@

pdf_slides: $(PDF_TARGETS)


# Automatic project zipping -----------------------------------------------
# Project filenames to work with
TO_ZIP_DIRS = $(filter %/, $(wildcard static/projects/*/))  # Find all directories in static/projects
TO_ZIP_NAMES = $(patsubst %/,%,$(TO_ZIP_DIRS))  # Remove trailing /
ZIP_TARGETS = $(addsuffix .zip,$(TO_ZIP_NAMES))  # Add .zip

# MAGIC! This expands $$() commands before deciding on any rules
# https://stackoverflow.com/a/21950971/120898
# https://www.gnu.org/software/make/manual/html_node/Secondary-Expansion.html
.SECONDEXPANSION:

# Recipe for converting the things in ZIP_TARGETS into actual zipped files
# 
# The $$(shell find % -type f) uses SECONDEXPANSION so that the target depends 
# on all the files in the folder being used as the main dependency for the target, 
# so any changes to any files in that folder get tracked
# https://stackoverflow.com/a/28844670/120898
# 
# The $(shell find path/to/source/folder -type f) incantation checks to see if 
# any files in the folder have been modified
# See: https://stackoverflow.com/a/14289872/120898
# 
# `cd` goes to the target folder and moves back a level
# 'zip`: FS syncs the files in and out of the zip; r includes all 
#        subdirectories; z excludes stuff

$(ZIP_TARGETS): %.zip : $$(shell find % -type f ! -path "%/.*")
	cd $(basename $@)/.. && zip -FSr $(notdir $@) $(notdir $(basename $@)) -x $(notdir $(basename $@))/.\*

zip_projects: $(ZIP_TARGETS)


# Site building -----------------------------------------------------------
clean:
	rm -rf public/

static/slides/css/ath-slides.css:
	sass static/slides/css/ath-slides.scss > static/slides/css/ath-slides.css

# build: 
build: static/slides/css/ath-slides.css zip_projects pdf_slides
	Rscript -e "blogdown::build_site(build_rmd = blogdown::filter_md5sum)"

serve: build
	Rscript -e "blogdown::serve_site(port=4321)"

deploy: build
	rsync -Prvzc --exclude='.DS_Store' --exclude='.Rproj.user/' --delete $(OUTPUTDIR)/ $(SSH_TARGET)
