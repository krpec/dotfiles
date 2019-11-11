(package-initialize)

(require 'package)
(require 'haml-mode)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" .  "https://orgmode.org/elpa/") t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#ff6188" "#fcfcfa"])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("930f7841c24772dda4f22291e510dac1d58813b59dcb9f54ad4f1943ea89cdcd" "d1ede12c09296a84d007ef121cd72061c2c6722fcb02cb50a77d9eae4138a3ff" "837f2d1e6038d05f29bbcc0dc39dbbc51e5c9a079e8ecd3b6ef09fc0b149ceb1" default)))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   (quote
    (org monokai-pro-theme monokai-alt-theme monokai-theme magithub magit-org-todos magit-gitflow magit haml-mode code-stats ac-html auto-complete)))
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

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
