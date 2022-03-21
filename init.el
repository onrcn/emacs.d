;; Sane emacs defaults
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-screen t)
(setq initial-major-mode 'text-mode)

;; No backup files
(setq make-backup-files nil)
;; No auto-save files
(setq auto-save-default nil)

;; Disable the toolbar
(tool-bar-mode -1)
;; Disable the menu bar
(menu-bar-mode -1)
;; Disable the scroll bar
(scroll-bar-mode -1)
;; Disable the splash screen
(setq inhibit-splash-screen t)
;; Disable the bell
(setq ring-bell-function 'ignore)

;; Relative line numbers
(display-line-numbers-mode t)
(setq display-line-numbers 'relative)

;; Package management
(require 'package)
(setq package-enable-at-startup nil)
;; Melpa, org, elpa, and melpa-stable
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; Use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; Load the config directory
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-looks)
(require 'init-packages)
(require 'init-modeline)
(require 'init-qol)
(require 'init-eaf) ;; Uncomment this line if you installed and want to use EAF, to see what EAF is: https://github.com/emacs-eaf/emacs-application-framework

;;; init.el ends here
