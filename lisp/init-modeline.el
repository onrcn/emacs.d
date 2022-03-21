;;; Modeline Customization
;;;
;;; The modeline is the bar at the bottom of the window that displays the file name, the current line number, and the current column number etc.
;;; The modeline is a special buffer that is not part of the normal buffer list.
;;; The modeline is not part of the buffer list, but it is displayed in the same way as the other buffers.
;;;

;; Modeline font
(set-face-attribute 'mode-line nil :font "3270Medium Nerd Font-20")

;; Add time to the modeline
(setq display-time-day-and-date t)
(display-time-mode 1)

;; Display battery if available
(display-battery-mode 1)

(provide 'init-modeline)
;;; init-modeline.el ends here