;;+--------------------------------~-----------------------~-------------------------+
;;|                         Editor's Settings                                        |
;;+--------------------------------~-----------------------~-------------------------+

;;++++>> Encoding

;; Coding System Read File encoding.
(modify-coding-system-alist 'file "\\.*\\'" 'utf-8)

;;++++>> Font

;;++++>> korean font setting
(set-fontset-font "fontset-default" '(#x1100 . #xffdc)
                   '("Gulim" . "iso10646-1"))
(set-fontset-font "fontset-default" '(#xe0bc . #xf66e)
                   '("Gulim" . "iso10646-1"))

(setq face-font-rescale-alist
       '((".*hiragino.*" . 1.0)
	 (".*Gulim.*" . 1.0)))
(set-language-environment "Korean")

;;++++>> Function-args
;; https://github.com/abo-abo/function-args
(fa-config-default)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c-mode))
(set-default 'semantic-case-fold t)

;; Add Your include path c/c++ project.
;;(semantic-add-system-include "~/Software/deal.II/include/" 'c++-mode)
;;(semantic-add-system-include "/usr/local/boost_1_54_0/" 'c++-mode)
(semantic-add-system-include "/home/babel/Build/DRV/BcmLinuxDVB/DRV/brcmlinuxdvbvix/" 'c-mode)

;;++++>> tabbar ruler
(setq tabbar-ruler-global-tabbar t)    ; get tabbar
(setq tabbar-ruler-global-ruler t)     ; get global ruler
;;(setq tabbar-ruler-popup-menu t)       ; get popup menu.
;;(setq tabbar-ruler-popup-toolbar t)    ; get popup toolbar
;;(setq tabbar-ruler-popup-scrollbar t)  ; show scroll-bar on mouse-move
(require 'tabbar-ruler)

;++++>> Edit
(provide 'editor)
