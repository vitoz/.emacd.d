(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/el")

(require 'init-org)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/org/gtd.org")))
 '(org-refile-targets (quote (("inbox.org" :level . 1) ("canceled.org" :level . 1) ("finished.org" :level . 1)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; smex自动补全
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;;; 缓冲区切换
(global-set-key "\C-x\C-b" 'bs-show)
(global-set-key "\M-p"  'bs-cycle-previous)
(global-set-key "\M-n"  'bs-cycle-next)

;;; color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-laptop)

 ;; File Edit Options Buffers Tools Emacs-Lisp Help
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

;;; smex自动补全
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;;; 缓冲区切换
(global-set-key "\C-x\C-b" 'bs-show)
(global-set-key "\M-p"  'bs-cycle-previous)
(global-set-key "\M-n"  'bs-cycle-next)

;;; color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-gnome2)
;;; 显示行号
(global-linum-mode)
(show-paren-mode)


;;; C/C++ Programming
(require 'cc-mode)
(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

