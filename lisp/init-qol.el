;;; Quality of life improvements

;; which-key mode
(which-key-mode)

;; To evaluate ~/.emacs.d/init.el
(defun eval-init-file ()
  "eval ~/.emacs.d/init.el"
  (interactive)
  (load-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-c e") 'eval-init-file)

;; To open file under the cursor
(defun find-file-under-cursor ()
  "Open the file path under the cursor"
  (interactive)
  (let* ((file-path (buffer-substring-no-properties
                     (line-beginning-position)
                     (line-end-position))))
    (if (file-exists-p file-path)
        (find-file file-path)
      (message "No file path under cursor"))))
(global-set-key (kbd "C-c f") 'find-file-under-cursor)

;; To open file under the cursor for emacs-lisp-mode,  

;; Open the current file in VS Code
(defun open-file-in-vscode ()
  "Open the current file in VS Code"
  (interactive)
  (let ((file-name buffer-file-name))
    (if file-name
        (start-process "open-file-in-vscode" "*open-file-in-vscode*" "code" file-name)
      (message "No file associated to this buffer."))))
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
(defun google-this ()
  "Google the selected region if any, otherwise the word at point. There is no word at point, then return an error message."
  (interactive)
  (let ((region (if (region-active-p)
                    (buffer-substring-no-properties (region-beginning) (region-end))
                  (thing-at-point 'word)))
        (url-google "https://www.google.com/search?q="))
    (if region
        (browse-url (concat url-google (url-hexify-string region)))
      (message "No region selected"))))

(global-set-key (kbd "C-c g") 'google-this)

;; Create a file for custom-set-variables if it doesn't exist
(if (not (file-exists-p "~/.emacs.d/custom.el"))
    (write-region "" nil "~/.emacs.d/custom.el"))
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'init-qol)
;;; init-qol.el ends here