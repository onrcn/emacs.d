;;; Keybindings
(require 'init-functions)

;; Evaluate init.el
(global-set-key (kbd "C-c e") 'eval-init-file)
;; To open file under the cursor
(global-set-key (kbd "C-c f") 'find-file-under-cursor)
;; Open the current file in VS Code
(global-set-key (kbd "C-c c") 'open-file-in-vscode)
;; Open the current file in VS Code
(global-set-key (kbd "C-c M-c") 'open-dir-in-vscode)


;; If we are in a .tex file, we can use C-c C-c to compile and open
(add-hook 'latex-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-c") 'latex-compile-and-open)))

;; If you want to Google something, use C-c g
(global-set-key (kbd "C-c g") 'google-this)

(provide 'init-keybindings)
;;; init-keybindings.el ends here