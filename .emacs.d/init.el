;;Very top of file
;;MELPA
(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/moe-theme")
(add-to-list 'load-path "~/.emacs.d/themes/moe-theme")
(add-to-list 'load-path "~/.emacs.d/ng2-mode")
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa") t)

;; https://orgmode.org/elpa.html
(unless package-archive-contents ;; refresh packages descriptions
  (package-refresh-contents))
(setq package-load-list '(all))
(unless (package-installed-p 'org)
  (package-install 'org))
(package-initialize)

;; https://github.com/joaotavora/yasnippet
(add-to-list 'loadpath
	     "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; https://magit.vc/manual/2.12.0/magit/Getting-Started.html#Getting-Started
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(setq magit-view-git-manual-method 'man)

;; TypeScript via https://github.com/AdamNiederer/ng2-mode
(require 'ng2-mode)
;(setq moe-theme-resize-markdown-title '(2.0 1.7 1.5 1.3 1.0 1.0))
;(setq moe-theme-resize-org-title '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))
;(setq moe-theme-resize-rst-title '(2.0 1.7 1.5 1.3 1.1 1.0))

;(setq moe-theme-mode-line-color 'orange)

;; backspace
(normal-erase-is-backspace-mode 0) 

;; line numbers
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; always show line numbers
(global-linum-mode 1)

;;Powerline
(add-to-list 'load-path "~/.emacs.d/powerline/")
(require 'powerline)

;;Moe Theme
(require 'moe-theme)
(moe-theme-set-color 'magenta)
;;Colors: blue, orange, green, magenta, yellow, purple, red, cyan, w/b.
(require 'moe-theme-switcher)

;;Transparency
(set-frame-parameter (selected-frame) 'alpha '(92 . 90))
(add-to-list 'default-frame-alist '(alpha . (92 . 90)))

;;Titlebar
(set-frame-name "emacs")

;;Scratch message
(setq initial-scratch-message ";;Hey Seth, good to see ya!")

;;Minibuffer message
(defun display-startup-echo-area-message ()
  (message "Hey you're doing great!"))

;;Backup directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(powerline-moe-theme)

