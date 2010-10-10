;; alter default behavior
(prefer-coding-system 'utf-8) ;; use utf-8

(setq user-temporary-file-directory "/tmp/")
(setq inhibit-startup-message t)


;; Spaces!
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Think of all the wasted bytes
(setq-default show-trailing-whitespace t)

;; do not make backup files
(setq make-backup-files nil)