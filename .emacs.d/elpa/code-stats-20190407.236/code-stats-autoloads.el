;;; code-stats-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "code-stats" "code-stats.el" (0 0 0 0))
;;; Generated autoloads from code-stats.el

(autoload 'code-stats-mode "code-stats" "\
Code Stats Minor Mode.

\(fn &optional ARG)" t nil)

(autoload 'code-stats-sync "code-stats" "\
Sync with Code::Stats.
If WAIT is non-nil, block Emacs until the process is done.

\(fn &optional WAIT)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "code-stats" '("code-stats-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; code-stats-autoloads.el ends here
