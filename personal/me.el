;;; me.el --- Personal configuration

;;; Commentary:

;; Custom configuration for Emacs

;;; Code:

(setq prelude-flyspell nil)
(setq mac-option-modifier 'meta)

(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key [f12] 'indent-buffer)

(defun my-c-mode ()
  ;; change defaults
  (setq-default indent-tabs-mode nil
                tab-width 2
                c-basic-offset 2))

(setq prelude-c-mode-common-hook 'my-c-mode)

(setq prelude-guru nil)
;;; me.el ends here
