;;+-----------------------~------------------------~---------------------+
;;|                           Emacs's GUI                                |
;;+-----------------------~------------------------~---------------------+

;; the toolbar is just a waste of valuable screen estate
;; in a tty tool-bar-mode does not properly auto-load, and is

;;++++> Cursor
(set-cursor-color "SkyBlue2")

;;++++> menu and scroll
(scroll-bar-mode -1)
(menu-bar-mode -1)

;;++++> Line
(global-hl-line-mode +1)

;;(set-face-background 'hl-line "#000094")
(set-face-foreground 'highlight nil)

;;++++> Linum Scaled display
(require 'linum)
(global-linum-mode t)
(defun linum-update-window-scale-fix (win)
  "fix linum for scaled text"
  (set-window-margins win
		      (ceiling (* (if (boundp 'text-scale-mode-step)
				      (expt text-scale-mode-step
					    text-scale-mode-amount) 1)
				  (if (car (window-margins))
				      (car (window-margins)) 1)
				  ))))

(advice-add #'linum-update-window :after #'linum-update-window-scale-fix)

;;+++++> hlinum
(require 'hlinum)
(hlinum-activate)

(provide 'gui)
;; ui.el ends here!!!!
