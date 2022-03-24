;;; Quality of life improvements

(require 'init-functions)

;; which-key mode
(which-key-mode)

;; Evaluate init.el
(global-set-key (kbd "C-c e") 'eval-init-file)

;; To open file under the cursor
(global-set-key (kbd "C-c f") 'find-file-under-cursor)

;; Open the current file in VS Code

(global-set-key (kbd "C-c v") 'open-file-in-vscode)

;; Open the current file in Neovim
(defun open-file-in-neovim ()
  "Open the current file in Neovim"
  (interactive)
  (let ((file-name buffer-file-name))
    (if file-name
        (start-process "open-file-in-neovim" "*open-file-in-neovim*" "nvim" file-name)
      (message "No file associated to this buffer."))))

;; If you are working on LaTeX, you can use this to compile
;; the current file and open the PDF in Emacs
(defun latex-compile-and-open ()
  "Compile the current file and open the PDF"
  (interactive)
  (let ((file-name buffer-file-name))
    (if file-name
        (progn
          (shell-command (concat "pdflatex " file-name))
          (shell-command (concat "evince " (replace-regexp-in-string ".tex" ".pdf" file-name))))
      (message "No file associated to this buffer."))))
;; If we are in a .tex file, we can use C-c C-c to compile and open
(add-hook 'latex-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-c") 'latex-compile-and-open)))

;; Trim whitespace when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; If you want to Google something, use C-c g
(global-set-key (kbd "C-c g") 'google-this)

;; Create a file for custom-set-variables if it doesn't exist
(if (not (file-exists-p "~/.emacs.d/custom.el"))
    (write-region "" nil "~/.emacs.d/custom.el"))
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'init-qol)
;;; init-qol.el ends here
