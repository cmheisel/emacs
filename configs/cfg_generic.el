(defun save-in-other-file (new-filename)
  (interactive "FFilename:")
  (write-region (point-min) (point-max) new-filename))

;; Set auto backups to be in temp dir
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))
;; Set a short interval and activate auto save
(setq auto-save-interval 50)
(setq auto-save-mode t)
(do-auto-save)


;; set up winner mode
(winner-mode 1)

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

;;Replace all freakin' ^M chars in the current buffer
(fset 'replace-ctrlms
   [escape ?< escape ?% ?\C-q ?\C-m return ?\C-q ?\C-j return ?!])
(global-set-key "\C-cm" 'replace-ctrlms)

;; DEPRECATED in favor of .profile addition outlined here: http://www.emacswiki.org/emacs/EmacsApp#toc3
;;Path additions
;;(when (equal system-type 'darwin)
;;  (setenv "PATH" (concat "/opt/local/bin:/opt/local/sbin:/opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin" (getenv "PATH")))
;;  (push "/opt/local/bin" exec-path)
;;  (push "/opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin" exec-path))