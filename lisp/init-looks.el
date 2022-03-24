;;; UI and Font Setup


;; Disable the menu bar
(menu-bar-mode -1)
;; Disable the tool bar
(tool-bar-mode -1)
;; Disable the scroll bar
(scroll-bar-mode -1)
;; Inhibit startup screen
(setq inhibit-startup-screen t)
;; Set the default font
(set-face-attribute 'default nil :font "FiraCode Nerd Font Mono")
;; Set the default font size
(set-face-attribute 'default nil :height 140)

;; Enable rainbow delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Load the theme
(load-theme 'doom-gruvbox-light t)

(provide 'init-looks)
;;; looks.el ends here
