;;; Quality of life improvements

(require 'init-functions)
(require 'init-ivy)
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
;; Ivy-based interface to standard commands
(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "<f2> j") 'counsel-set-variable)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-c v") 'ivy-push-view)
(global-set-key (kbd "C-c V") 'ivy-pop-view)

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

(provide 'init-qol)
;;; init-qol.el ends here
