;;; Downloading Packages

;; default package
(defun require-package (package)
  "Install given PACKAGE if it is not already installed."
  (unless (package-installed-p package)
    (package-install package)))

;; doom-themes
(use-package doom-themes
  :ensure t)
;; modus-themes
(use-package modus-themes
  :ensure t)

;; all-the-icons
(use-package all-the-icons
  :ensure t)

;; dired icon
(use-package dired-icon
  :ensure t)

;; which-key
(use-package which-key
  :ensure t)

(provide 'init-packages)
;;; init-package.el ends here
