;;; Ivy configurations

;; Ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-re-builders-alist
    '((t . ivy--regex-fuzzy)))
(setq ivy-initial-inputs-alist nil)
(setq ivy-use-selectable-prompt t)
(setq ivy-use-virtual-buffers t)
(setq ivy-display-style 'fancy)
(setq ivy-format-function 'ivy-format-function-line)
(setq ivy-wrap t)
(setq ivy-extra-directories nil)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))
(setq ivy-initial-inputs-alist nil)
(setq ivy-use-selectable-prompt t)
(setq ivy-use-virtual-buffers t)
(setq ivy-display-style 'fancy)
(setq ivy-format-function 'ivy-format-function-line)
(setq ivy-wrap t)
(setq ivy-extra-directories nil)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))
(setq ivy-initial-inputs-alist nil)
(setq ivy-use-selectable-prompt t)
(setq ivy-use-virtual-buffers t)
(setq ivy-display-style 'fancy)
(setq ivy-format-function 'ivy-format-function-line)

(provide 'init-ivy)
;;; init-ivy.el ends here