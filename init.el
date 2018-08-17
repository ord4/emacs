;; Add more available packages to install
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Recognize different modes
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; Theme settings
(load-theme 'spacemacs-dark t)

;; Hide the menu and tool bar
(menu-bar-mode -1)
(tool-bar-mode -1)

