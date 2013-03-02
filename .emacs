; Put this in your .emacs
(require 'color-theme)
;(load "~/.emacs.d/zenburn")
;(eval-after-load "color-theme"
;  '(progn
;     (color-theme-zenburn)))
(load "~/.emacs.d/color-theme-colorful-obsolescence")
(eval-after-load "color-theme"
  '(progn
     (color-theme-colorful-obsolescence)))


; Must have org-mode loaded before we can configure org-babel
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
 
; Some initial langauges we want org-babel to support
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sh . t)
   (python . t)
   (R . t)
   (ruby . t)
   (ditaa . t)
   (dot . t)
   (octave . t)
   (sqlite . t)
   (perl . t)
  ))

;;; Emacs server

; Do not close the file that was being edited when C-x # is typed
(setq server-kill-new-buffers nil)

; Start the emacs server for emacsclient
(server-start)

; Add short cut keys for the org-agenda
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)

; Setup custom shortcuts
(global-set-key "\C-x\C-g" 'goto-line)
(global-set-key [f1] 'compile)
(global-set-key [f2] 'next-error)