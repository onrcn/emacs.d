;;; Downloading Packages

;; Package sources (MELPA, ELPA, org)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

;; default package
(defun require-package (package)
  "Install given PACKAGE if it is not already installed."
  (unless (package-installed-p package)
    (package-install package)))

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

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

;; Counsel
(use-package counsel
  :ensure t)

;; Ivy
(use-package ivy
  :ensure t)

;; Ivy-rich
(use-package ivy-rich
  :ensure t)

;; Swiper
(use-package swiper
  :ensure t)

;; Hydra
(use-package hydra
  :ensure t)

;; Help
(use-package helpful
  :ensure t)

;; Cheatsheet
(use-package cheatsheet
  :ensure t)

;; Org
(use-package org
  :ensure t)

;; LSP
(use-package lsp-mode
  :ensure t)

;; LSP-ui
(use-package lsp-ui
  :ensure t)

;; Treemacs
(use-package treemacs
  :ensure t)

;; Doom modeline
(use-package doom-modeline
  :ensure t)

;; Rainbow paranthesis
(use-package rainbow-delimiters
  :ensure t)

;; Magit
(use-package magit
  :ensure t)

;; Projectile
(use-package projectile
  :ensure t)


(provide 'init-packages)
;;; init-package.el ends here
