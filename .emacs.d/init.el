;;(package-initialize)


(require 'package)
(require 'haml-mode)
(require 'yaml-mode)
(require 'magit-gitflow)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" .  "https://orgmode.org/elpa/") t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
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
 '(package-selected-packages
   '(company-arduino company-irony company-c-headers irony-eldoc irony arduino-mode ## yaml-mode which-key org monokai-pro-theme monokai-alt-theme monokai-theme magithub magit-org-todos magit-gitflow magit haml-mode code-stats ac-html auto-complete))
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

;; magit gitflow
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)

(global-set-key "\C-x\C-m" 'execute-extended-command)

;;(global-set-key "\C-w" 'backward-kill-word)
;;(global-set-key "\C-x\C-k" 'kill-region)

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
