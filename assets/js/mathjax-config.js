// MathJax Configuration
//
// v2 to v3 upgrade notes:
// - The CommonHTML.linebreaks option is not yet implemented (but may be in a future release)
// - The TeX.noUndefined.attributes option is not yet implemented (but may be in a future release)
// window.MathJax = {
//   tex: {
//     inlineMath: [['$', '$'], ['\\(', '\\)']],
//     displayMath: [['$$', '$$'], ['\\[', '\\]']],
//     processEscapes: true,
//     packages: {'[+]': ['noerrors']}
//   },
//   loader: {
//     load: ['[tex]/noerrors']
//   }
// };
MathJax = {
        tex: {
            inlineMath: [
                ['$', '$'], ['\\(', '\\)']
            ],
            processEscapes: true,
            processEnvironments: true
        },
        options: {
            skipHtmlTags: ['script', 'noscript', 'style', 'textarea', 'pre']
        }
    };
