(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'exec-path "/Users/caw/opt/anaconda3/bin/")
(load-theme 'zenburn t)

(setq default-directory "~")

(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)
(setq mac-command-key-is-meta t)
(setq mac-option-key-is-meta nil
      
       mac-command-key-is-meta t
       mac-command-modifier 'meta
       mac-option-modifier 'super) ; make opt key do Super
(tool-bar-mode -1)

(visual-line-mode t)
(electric-pair-mode nil)
(setq ring-bell-function 'ignore)

;; lisp
(add-hook 'after-init-hook 'global-company-mode)
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq common-lisp-hyperspec-root "file:///Users/caw/HyperSpec/")


;; org

(require 'org-bullets)

(require 'ox-pandoc)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c o") 
                 (lambda () (interactive) (find-file "~/Documents/org/covid.org")))
(setq org-default-notes-file (concat org-directory "/notes.org"))
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-log-done 'time)

(setq org-refile-targets '((nil :maxlevel . 9)
                                (org-agenda-files :maxlevel . 9)))
(setq org-outline-path-complete-in-steps nil)         ; Refile in a single go
(setq org-refile-use-outline-path t)                  ; Show full paths for refiling

(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DELEGATED" "DONE")))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function 'eww-browse-url)
 '(custom-safe-themes
   '("e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "fe36e4da2ca97d9d706e569024caa996f8368044a8253dc645782e01cd68d884" "57d7e8b7b7e0a22dc07357f0c30d18b33ffcbb7bcd9013ab2c9f70748cfa4838" "5f4dfda04fbf7fd55228266c8aab73953d3087cea7fd06dd7f8ff1e4a497c739" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" default))
 '(electric-indent-mode nil)
 '(electric-pair-mode nil)
 '(package-selected-packages
   '(zenburn-theme arjen-grey-theme color-theme-modern use-package zotxt yasnippet-snippets yasnippet-classic-snippets xref-js2 white-theme w3m sublime-themes sly-repl-ansi-color sly-quicklisp sly-named-readtables sly-macrostep sly-hello-world sly-asdf slime-company racket-mode projectile-variable pandoc-mode pandoc ox-pandoc org-present-remote org-bullets major-mode-hydra magit indium hyperlist-mode hyperbole helm-sly helm-projectile haskell-mode golden-ratio-scroll-screen golden-ratio fireplace exec-path-from-shell evil-visual-mark-mode evil-org evil-easymotion evil-better-visual-line company-auctex common-lisp-snippets cider-hydra cider-eval-sexp-fu cider-decompile auto-complete-auctex ag ac-sly ac-js2 ac-geiser ac-clang ac-cider 2048-game 0x0))
 '(ring-bell-function 'ignore)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
