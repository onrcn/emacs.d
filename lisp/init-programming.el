;;; Main coding stuff goes here

(require 'init-lsp)

;; Set-up company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 2)
(setq company-selection-wrap-around t)
(setq company-show-numbers t)
(setq company-tooltip-align-annotations t)
(setq company-tooltip-limit 10)
(setq company-tooltip-minimum 10)
(setq company-tooltip-flip-when-above t)
(setq company-dabbrev-downcase nil)
(setq company-dabbrev-ignore-case nil)
(setq company-dabbrev-code-other-buffers t)
(setq company-dabbrev-code-everywhere t)
(setq company-dabbrev-code-ignore-case t)
(setq company-dabbrev-code-modes '(c-mode c++-mode))

;; Use company with lsp
(require 'company-lsp)
(push 'company-lsp company-backends)

;; Hook electric-pair-mode to programming modes
(add-hook 'prog-mode-hook #'electric-pair-mode)
;; Hook company-mode to programming modes
(add-hook 'prog-mode-hook #'company-mode)
;; Hook display-line-numbers-mode to programming modes, set it 'relative
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook (lambda () (setq display-line-numbers-type 'relative)))

;; Install rust-mode
(require 'rust-mode)
(add-hook 'rust-mode-hook #'lsp)


(provide 'init-programming)
;;; lsp-suggestions.el ends here