;;; Eww is the Emacs Web Wowser

(use-package eww
    :ensure nil
    :commands (eww eww-open-file)
    :config
    (setq eww-search-prefix "https://www.google.com/search?q=")
    (setq eww-search-prefix-url "https://www.google.com/search?q="))

(provide 'init-eww)
;;; init-eww.el end here