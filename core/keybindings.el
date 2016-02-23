;;+--------------------------------~-----------------------~-------------------------+
;;|                              Emacs's Keybindings                                 |
;;+--------------------------------~-----------------------~-------------------------+

;;++++> Iedit global edit
(define-key global-map (kbd "C-c ;") 'iedit-mode)

;;++++> move another window cursor.
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

;;++++> Smex
(autoload 'smex "smex"
  "Smex is a M-x enhancement for Emacs, it provides a convenient interface to
your recently and most frequently used commands.")
(global-set-key (kbd "M-x") 'smex)

(provide 'keybindings)
