;;; keybindings.el --- scloudyy Layer packages File for Spacemacs
;;
;; Copyright (c) 2015-2016 scloudyy
;;
;; Author: scloudyy <onecloud.shen@gmail.com>
;; URL: https://github.com/scloudyy/my-spacemacs.git
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(require 'dired)
(bind-key* "C-c l" 'zilongshanren/insert-chrome-current-tab-url)

(global-set-key (kbd "s-/") 'hippie-expand)

;; A complementary binding to the apropos-command (C-h a)
(define-key 'help-command "A" 'apropos)


(define-key 'help-command (kbd "C-f") 'find-function)
(define-key 'help-command (kbd "C-k") 'find-function-on-key)
(define-key 'help-command (kbd "C-v") 'find-variable)
(define-key 'help-command (kbd "C-l") 'find-library)

(define-key 'help-command (kbd "C-i") 'info-display-manual)

(global-set-key [(shift return)] 'smart-open-line)

(define-key global-map (kbd "C-c y") 'youdao-dictionary-search-at-point+)

(global-set-key (kbd "C-.") 'company-capf)


;; some easy functions for navigate functions
;;C-M-a beginning-of-defun
;;C-M-e end-of-defun
;;C-M-h mark-defun
(global-set-key (kbd "C-s-h") 'mark-defun)

(global-set-key (kbd "s-l") 'goto-line)
(global-set-key (kbd "s-s") 'save-buffer)

(global-set-key (kbd "C-`") 'set-mark-command)

(global-set-key (kbd "<f5>") 'zilongshanren/run-current-file)

;; "http://endlessparentheses.com/transposing-keybinds-in-emacs.html?source=rss"
;; (global-set-key "\C-t" #'transpose-lines)
;; (define-key ctl-x-map "\C-t" #'transpose-chars)

(when (spacemacs/system-is-mac)
 (evil-leader/set-key "o!" 'zilongshanren/iterm-shell-command))

(spacemacs|add-toggle toggle-shadowsocks-proxy-mode
    :status shadowsocks-proxy-mode
    :on (global-shadowsocks-proxy-mode)
    :off (global-shadowsocks-proxy-mode -1)
    :documentation "Toggle shadowsocks proxy mode."
    :evil-leader "toP")

(global-set-key (kbd "s-s") 'save-buffer)
(bind-key* "s-k" 'scroll-other-window-down)
(bind-key* "s-j"  'scroll-other-window)
(bind-key* "C-c /" 'company-files)

(global-set-key (kbd "M-f") 'pyim-forward-word)
(global-set-key (kbd "M-b") 'pyim-backward-word)

(global-set-key (kbd "C-x x") 'helm-M-x)
(global-set-key (kbd "C-x j") 'fasd-find-file)

(eval-after-load 'dired-mode
     (progn
       (define-key dired-mode-map (kbd "C-k") 'zilongshanren/dired-up-directory)))
(define-key dired-mode-map (kbd "<mouse-2>") 'my-dired-find-file)
(define-key dired-mode-map "E" 'dired-toggle-read-only)
(define-key dired-mode-map (kbd "`") 'dired-open-term)
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
(define-key dired-mode-map (kbd "z") 'dired-get-size)
(define-key dired-mode-map (kbd "f") 'helm-find-files)

(global-set-key (kbd "C-M-_") 'spacemacs/zoom-frm-out)
(global-set-key (kbd "C-M-+") 'spacemacs/zoom-frm-in)

(global-set-key (kbd "C-;") 'helm-swoop)
(bind-key* "C-s" 'isearch-forward)

(evil-leader/set-key "a." 'helm-browse-url-firefox)

(bind-key* (kbd "M-j") 'evil-normal-state)
(bind-key* (kbd "M-J") 'indent-new-comment-line)

;; my global leader key
(bind-key* (kbd "M-k M-k") 'evil-avy-goto-char-2)
(bind-key* (kbd "M-k M-j") 'evil-avy-goto-word-or-subword-1)
(bind-key* (kbd "M-k h") 'scloudyy/hotspots)
(bind-key* (kbd "M-k ;") 'zilongshanren/insert-semicolon-at-the-end-of-this-line)
(bind-key* (kbd "M-k o") 'org-capture)
(bind-key* (kbd "M-K") 'kill-sentence)
(bind-key* (kbd "M-k e") 'slcoudyy/Change-To-En-Input-Method)
(bind-key* (kbd "M-k c") 'slcoudyy/Change-To-Ch-Input-Method)
