;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "Vorlage_MAS"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrartcl" "11pt" "a4paper" "titlepage")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("harvard" "") ("graphicx" "") ("setspace" "") ("babel" "ngerman") ("amsmath" "") ("booktabs" "") ("inputenc" "utf8") ("geometry" "") ("array" "") ("tabularx" "") ("dcolumn" "") ("longtable" "") ("colortbl" "") ("rotating" "") ("multirow" "") ("scrlayer-scrpage" "") ("nameref" "") ("amsfonts" "") ("txfonts" "")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "scrartcl"
    "scrartcl11"
    "harvard"
    "graphicx"
    "setspace"
    "babel"
    "amsmath"
    "booktabs"
    "inputenc"
    "geometry"
    "array"
    "tabularx"
    "dcolumn"
    "longtable"
    "colortbl"
    "rotating"
    "multirow"
    "scrlayer-scrpage"
    "nameref"
    "amsfonts"
    "txfonts")
   (LaTeX-add-labels
    "sect:Introduction"
    "Tabellenlabel"
    "Abbildungslabel"))
 :latex)

