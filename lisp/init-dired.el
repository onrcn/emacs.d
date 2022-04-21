;;; Dired (File Manager of Emacs) configurations
;;; Dired (File Manager of Emacs) is a powerful tool for managing files and directories.
;;; It provides a simple interface for viewing and editing files, and can be used to create and manipulate directories.

(use-package dired
    :config
    (setq dired-dwim-target t)
    (setq dired-recursive-copies 'always)
    (setq dired-recursive-deletes 'always)
    (setq dired-listing-switches "-alh"))

(use-package dired-hide-dotfiles
    :config
    (define-key dired-mode-map (kbd ".") 'dired-hide-dotfiles-mode)
    :hook
    (dired-mode . dired-hide-dotfiles-mode))

(use-package all-the-icons-dired
    :hook
    (dired-mode . all-the-icons-dired-mode))


(provide 'init-dired)
;;; init-dired.el ends here