;;; Quality of life improvements

(require 'init-functions)

;; which-key mode
(which-key-mode)

;; No error bell
(setq ring-bell-function 'ignore)

;; Evaluate init.el
(global-set-key (kbd "C-c e") 'eval-init-file)
;; To open file under the cursor
(global-set-key (kbd "C-c f") 'find-file-under-cursor)
;; Open the current file in VS Code
(global-set-key (kbd "C-c c") 'open-file-in-vscode)

;; If we are in a .tex file, we can use C-c C-c to compile and open
(add-hook 'latex-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-c") 'latex-compile-and-open)))

;; If you want to Google something, use C-c g
(global-set-key (kbd "C-c g") 'google-this)

;; Create a file for custom-set-variables if it doesn't exist
(if (not (file-exists-p "~/.emacs.d/custom.el"))
    (write-region "" nil "~/.emacs.d/custom.el"))
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Trim whitespace when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Make scrolling less stuttered
(setq auto-window-vscroll nil)
(customize-set-variable 'fast-but-imprecise-scrolling t)
(customize-set-variable 'scroll-conservatively 101)
(customize-set-variable 'scroll-margin 0)
(customize-set-variable 'scroll-preserve-screen-position t)

;; Revert Dired and other buffers
(customize-set-variable 'global-auto-revert-non-file-buffers t)


;; Use "y" and "n" to confirm/negate prompt instead of "yes" and "no"
;; Using `advice' here to make it easy to reverse in custom
;; configurations with `(advice-remove 'yes-or-no-p #'y-or-n-p)'
;;
;; N.B. Emacs 28 has a variable for using short answers, which should
;; be preferred if using that version or higher.
(if (boundp 'use-short-answers)
    (setq use-short-answers t)
  (advice-add 'yes-or-no-p :override #'y-or-n-p))

(provide 'init-qol)
;;; init-qol.el ends here
