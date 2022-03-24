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

;; To evaluate ~/.emacs.d/init.el
(defun eval-init-file ()
  "eval ~/.emacs.d/init.el"
  (interactive)
  (load-file "~/.emacs.d/init.el"))

;; Open file under the cursor
(defun find-file-under-cursor ()
  "Open the file path under the cursor"
  (interactive)
  (let* ((file-path (buffer-substring-no-properties
                     (line-beginning-position)
                     (line-end-position))))
    (if (file-exists-p file-path)
        (find-file file-path)
      (message "No file path under cursor"))))

;; Open the current file in VS Code
(defun open-file-in-vscode ()
  "Open the current file in VS Code"
  (interactive)
  (let ((file-name buffer-file-name))
    (if file-name
        (start-process "open-file-in-vscode" "*open-file-in-vscode*" "code" file-name)
      (message "No file associated to this buffer."))))

(provide 'init-functions)
;;; init-functions.el ends here
