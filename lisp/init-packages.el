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
;; cool themes
(use-package color-theme-sanityinc-tomorrow
  :ensure t)
;; kaolin-themes
(use-package kaolin-themes
  :ensure t)

;; all-the-icons
(use-package all-the-icons
  :ensure t)
;; All The Icons Dired  
(use-package all-the-icons-dired
  :ensure t)
;; Dired Hide Dot Files
(use-package dired-hide-dotfiles
  :ensure t)

;; which-key
(use-package which-key
  :ensure t)
;; Vertico
(use-package vertico
  :ensure t)
;; Marginalia
(use-package marginalia
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
(use-package company-box
  :hook (company-mode . company-box-mode))

;; Tree-sitter
(use-package tree-sitter
  :ensure t)

;; Snippets
(use-package yasnippet
  :ensure t)

;; LSP
(use-package lsp-mode :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
;; C/C++
(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp))))
;; Rust
(use-package rust-mode
  :ensure t
  :hook (rust-mode . lsp))

;; multi cursors
(use-package multiple-cursors
  :ensure t)

;; Writeroom
(use-package writeroom-mode
  :ensure t)

;; A package to try new packages
(use-package try
  :ensure t)

(provide 'init-packages)
;;; init-package.el ends here
