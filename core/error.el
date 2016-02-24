;;+--------------------------------~-----------------------~-------------------------+
;;|                                 Emacs's error env.                               |
;;+--------------------------------~-----------------------~-------------------------+

;;++++++> ecb error fix.
(setq ecb-examples-bufferinfo-buffer-name nil)
; stack-trace-on-error
(setq stack-trace-on-error t)
(setq ecb-version-check nil)

(provide 'error)
