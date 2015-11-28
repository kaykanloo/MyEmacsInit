;; Hide useless messages
(setq inhibit-startup-message t)
(setq initial-scratch-message ";; This buffer is for notes you don't want to save, and for Lisp evaluation...")
;; Full-Screen
(toggle-frame-fullscreen) 
;; Hide Scrollbar & Toolbar
(scroll-bar-mode 0)
(tool-bar-mode 0)
;; Colors
(set-foreground-color "black")
(set-background-color "#fffffd")
(set-face-attribute 'fringe nil :foreground "black" :background "#fffffd")
(set-face-attribute 'mode-line nil :foreground "black" :background "#fffffd" :box nil)
(set-face-attribute 'mode-line-inactive nil :foreground "black" :background "#ededea" :box nil)

;;Mode-Line
(setq default-mode-line-format
      (list
       " "
       '(:eval (if buffer-read-only    "R" "-"))
       '(:eval (if (buffer-modified-p) "M" "-"))
       " | "
       "%b"
       " | "
       "L%l"
       " | "
       "%p"
       "/"
       "%I"
       " | "
       mode-line-misc-info
       " | "
       mode-line-modes
       ))
(display-time-mode 1)
(display-battery-mode 1)

;; MELPA Repository
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;;Sublimity Package
(require 'sublimity)
(require 'sublimity-scroll)
(require 'sublimity-attractive)
(setq sublimity-attractive-centering-width 160)
(sublimity-mode 1)
