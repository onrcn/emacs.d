;;; Completions

(use-package vertico
    :ensure t)
(require 'vertico)

;; Cycle back to top/bottom result when the edge is reached
(customize-set-variable 'vertico-cycle t)

;; Start Vertico
(vertico-mode 1)

(use-package marginalia
    :ensure t)
;; Configure Marginalia
(require 'marginalia)
(setq marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
(marginalia-mode 1)

(setq completion-in-region-function #'consult-completion-in-region)

(provide 'init-completion)
;;; init-completion.el ends here
