;;(package-initialize)

(require 'package)
(require 'haml-mode)
(require 'yaml-mode)
(require 'magit-gitflow)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" .  "https://orgmode.org/elpa/") t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.jsn\\'" . json-mode))
(add-to-list 'auto-mode-alist '("\\.axlsx\\'" . ruby-mode))
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#ff6188" "#fcfcfa"] t)
 '(auth-source-save-behavior nil)
 '(blink-cursor-mode nil)
 '(custom-enabled-themes '(monokai))
 '(custom-safe-themes
   '("930f7841c24772dda4f22291e510dac1d58813b59dcb9f54ad4f1943ea89cdcd" "d1ede12c09296a84d007ef121cd72061c2c6722fcb02cb50a77d9eae4138a3ff" "837f2d1e6038d05f29bbcc0dc39dbbc51e5c9a079e8ecd3b6ef09fc0b149ceb1" default))
 '(global-display-line-numbers-mode t)
 '(global-hl-line-mode t)
 '(menu-bar-mode nil)
 '(org-agenda-files
   '("~/org/house.org" "~/org/rd2code.org" "~/org/unsorted.org" "~/org/home.org" "~/org/salmon.org" "~/org/nom.org" "~/org/clr.org"))
 '(package-selected-packages
   '(scad-preview scad-mode php-mode use-package org-bullets json-mode lua-mode company-arduino company-irony company-c-headers irony-eldoc irony arduino-mode ## yaml-mode which-key org monokai-pro-theme monokai-alt-theme monokai-theme magithub magit-org-todos magit-gitflow magit haml-mode code-stats ac-html auto-complete))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-startup-message t)
(global-set-key "\C-x\C-m" 'execute-extended-command)

;; magit & magit gitflow
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
(global-set-key "\C-xg" 'magit-status)
(global-set-key "\C-x\M-g" 'magit-dispatch)

;;ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-create-new-buffer 'always)
(setq ido-ignore-extensions t)

;;which-key
(which-key-mode)

;;yaml-mode
(add-hook 'yaml-mode-hook
	  '(lambda ()
	     (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;;
;;org-mode
;;
(add-to-list 'load-path (expand-file-name "~/dev/emacs_orgmode/lisp"))
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
;;(global-set-key "\C-cb" 'org-iswitchb)

;;(setq org-agenda-files (list "~/org/home.org"
;;			     "~/org/house.org"
;;			     "~/org/salmon.org"
;;			     "~/org/nom.org"
;;			     "~/org/clr.org"))

(setq org-directory "~/org")
(setq org-default-notes-file  "~/org/unsorted.org")
(setq org-agenda-restore-windows-after-quit t)
(setq org-log-done 'time)
(setq org-completion-use-ido t)
(setq org-todo-keywords
      '((sequence "TODO(t)" "STRT(s!)" "WAIT(w@/!)" "HOLD(h/!)" "|" "DONE(d!)" "CNCL(c@)")))
(setq org-refile-use-outline-path 'file)
(setq org-refile-targets
      `((org-agenda-files
	 :regexp . "refile")
	(org-agenda-files
	 :maxlevel . 1)))
(setq org-outline-path-complete-in-steps nil)
(use-package org-bullets
  :hook (org-mode . org-bullets-mode))
(setq org-list-demote-modify-bullet '(("+" . "-") ("-" . "+") ("*" . "+")))
(setq org-log-into-drawer t)
(setq org-support-shift-select t)
;;reverses the order for refiling - puts refiled notes at the top
;;(setq org-reverse-note-order t)
