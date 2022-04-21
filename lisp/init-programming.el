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
(use-package company
  :hook (scala-mode . company-mode)
  :config
  (setq lsp-completion-provider :capf))

;; Hook electric-pair-mode to prog mode
(use-package electric-pair-mode
  :hook
  (prog-mode . electric-pair-mode))

;; Hook display-line-numbers-mode to programming modes, set it 'relative
(use-package display-line-numbers
  :hook
  (prog-mode . (lambda () (setq display-line-numbers 'relative))))
;; Hook company-mode to programming modes
(use-package company-mode
  :hook
  (prog-mode . company-mode))

;; Enable yasnippet.
(use-package yasnippet
  :config
  (yas-global-mode 1)

  (define-key yas-minor-mode-map [(tab)]        nil)
  (define-key yas-minor-mode-map (kbd "TAB")    nil)
  (define-key yas-minor-mode-map (kbd "<tab>")  nil)
  (define-key yas-minor-mode-map (kbd "<C-return>")  'yas-expand))

;; `fic-mode' - highlight to-do keywords.
(use-package fic-mode
  :ensure t
  :hook
  (prog-mode . fic-mode))
  
;; Install rust-mode
(require 'rust-mode)
(add-hook 'rust-mode-hook #'lsp)

(provide 'init-programming)
;;; lsp-suggestions.el ends here
