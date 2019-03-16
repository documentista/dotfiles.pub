;; Note on interactive setq:
;; use M-:, which runs the command eval-expression
;; then: (setq yourvar yourval)
;; and: C-h v yourvar to see the value

;; Self-installing/configuring. Nothing else needed to get emacs working for
;; a vimmy clojurer.

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa-stable.milkbox.net/packages/")))
(package-initialize)
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(defvar package-list '(evil ;; vimmy emacs
                       dash ;; required for clojure-mode
                       pkg-info
                       smex
                       ido-ubiquitous
                       clojure-mode
                       clojure-mode-extra-font-locking
                       better-defaults
                       paredit))
(dolist (p package-list)
  (when (not (package-installed-p p))
    (package-install p)))

(setq evil-word "-A-Za-z0-9:!#$%&*+<=>?@^_~")
(require 'evil)
(evil-mode 1)

;; http://www.emacswiki.org/emacs/BackupDirectory 
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/.bak.emacs"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control 1)

(remove-hook 'clojure-mode-hook 'esk-pretty-fn)
(add-hook 'clojure-mode-hook 'paredit-mode)

;; -----------------------------
;; Paredit
(add-hook 'inferior-lisp-mode-hook 'paredit-mode)
(eval-after-load 'paredit '(define-key paredit-mode-map (kbd "M-)") 'paredit-forward-slurp-sexp))
(eval-after-load 'paredit '(define-key paredit-mode-map (kbd "M-}") 'paredit-forward-barf-sexp))
(eval-after-load 'paredit '(define-key paredit-mode-map (kbd "M-(") 'paredit-backward-slurp-sexp))
(eval-after-load 'paredit '(define-key paredit-mode-map (kbd "M-{") 'paredit-backward-barf-sexp))

(add-to-list 'load-path "~/.emacs.d/")

;; Make C-u scroll up a page as in vim.
(setq evil-want-C-u-scroll t)

(setq scroll-conservatively 10000)
(setq scroll-margin 3)

;; auto indent new lines
(define-key global-map (kbd "RET") 'newline-and-indent)

(setq-default show-trailing-whitespace t)

(global-set-key  (kbd "M-x") 'smex)
(global-set-key  (kbd "M-X") 'smex-major-mode-commands)
(column-number-mode)

(load-library "clj-repl")
(load "emacs.local" t)

(add-to-list 'custom-theme-load-path "~/.solarized")
(load-theme 'solarized t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (paredit better-defaults clojure-mode-extra-font-locking clojure-mode ido-ubiquitous smex pkg-info dash evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
