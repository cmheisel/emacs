;;===== PyFlakes
;; code checking via pyflakes+flymake

(when (load "flymake" t)
 (defun flymake-pyflakes-init ()
 (let* ((temp-file (flymake-init-create-temp-buffer-copy
 'flymake-create-temp-inplace))
 (local-file (file-relative-name
 temp-file
 (file-name-directory buffer-file-name))))
 (list "pychecks.sh" (list local-file))))

 (add-to-list 'flymake-allowed-file-name-masks
 '("\\.py\\'" flymake-pyflakes-init)))

 (add-hook 'find-file-hook 'flymake-find-file-hook)

;;===== Redefine pychecker command
(custom-set-variables
  '(py-pychecker-command "pychecks.sh")
  '(py-pychecker-command-args (quote ("")))
  '(python-check-command "pychecks.sh")
)