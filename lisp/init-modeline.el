;;; Modeline Customization
;;;
;;; The modeline is the bar at the bottom of the window that displays the file name, the current line number, and the current column number etc.
;;; The modeline is a special buffer that is not part of the normal buffer list.
;;; The modeline is not part of the buffer list, but it is displayed in the same way as the other buffers.
;;;

;; Enable doom modeline
(doom-modeline-mode 1)
;; Doom modeline theme
(setq doom-modeline-height 25)
(setq doom-modeline-bar-width 3)

;; Doom modeline batery
(setq doom-modeline-battery-enable t)
(setq doom-modeline-battery-format "BAT: %b%p")

(provide 'init-modeline)
;;; init-modeline.el ends here