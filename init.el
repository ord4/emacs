;; Add more available packages to install
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Recognize different modes
;; Org mode
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; Theme settings
(load-theme 'spacemacs-dark t)

;; Hide the menu and tool bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Highlight current line
(global-hl-line-mode +1)

;; Disable auto saving/restore files
(setq auto-save-default nil)
(setq make-backup-files nil)

;; Showing matching paren mode
(define-globalized-minor-mode my-global-paren-mode show-paren-mode
  (lambda () (show-paren-mode 1)))
(my-global-paren-mode 1)

;; Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; Set the warning bell to visual
(setq visible-bell 1)

;; Ace Window
(global-set-key (kbd "M-o") 'ace-window)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ace-window multiple-cursors markdown-mode spacemacs-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
