;;; Emacs Application Framework

(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework/")
(require 'eaf)


;; Fully featured emacs browser
(require 'eaf-browser)

;; Emacs PDF viewer
(require 'eaf-pdf-viewer)
;; You can use this with 'TeX files
(add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex --synctex=1%(mode)%' %t" TeX-run-TeX nil t))
(add-to-list 'TeX-view-program-list '("eaf" eaf-pdf-synctex-forward-view))
(add-to-list 'TeX-view-program-selection '(output-pdf "eaf"))

;; Org file previewer in Emacs
(require 'eaf-org-previewer)

;; File manager, support file real-time preview
(require 'eaf-file-manager)

;; Mindmap with full-featured keyboard operation
(require 'eaf-mindmap)

;; Full-featured terminal
(require 'eaf-terminal)

;; Image viewer supporting real-time zoom rotation
(require 'eaf-image-viewer)


(provide 'init-eaf)
;;; init-eaf.el ends here