;;; Language Server Protocol

(setq ccls-executable "/usr/local/bin/ccls") ;; ccls executable
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred

(provide 'init-lsp)
;;; init-lsp.el ends here
