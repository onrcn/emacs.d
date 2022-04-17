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

;; Vertico

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

;; Company
(use-package company
  :ensure t)

;; LSP
(use-package lsp-mode :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
;; C/C++
(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp))))
;; Python
(use-package lsp-python-ms
  :ensure t
  :init (setq lsp-python-ms-auto-install-server t)
  :hook (python-mode . (lambda ()
                          (require 'lsp-python-ms)
                          (lsp))))  ; or lsp-deferred()

(provide 'init-packages)
;;; init-package.el ends here
