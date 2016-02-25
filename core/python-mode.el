;;+-------------------------~-----------------------~--------------------------------+
;;|                           Emacs's Python Env                                     |
;;+-------------------------~-----------------------~--------------------------------+
(require 'auto-virtualenv)
(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
;; Activate on changing buffers
;;(add-hook 'window-configuration-change-hook 'auto-virtualenv-set-virtualenv) <<----- error code
;; Activate on focus in
(add-hook 'focus-in-hook 'auto-virtualenv-set-virtualenv)
;;
(provide 'python-mode)
