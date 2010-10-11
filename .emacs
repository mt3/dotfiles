;; Load paths
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp-personal"))

;; some stuff stolen
;; from defunkt
; custom place to save customizations
(setq custom-file "~/.emacs.d/mt/custom.el")
(when (file-exists-p custom-file) (load custom-file))
(when (file-exists-p ".passwords") (load ".passwords"))

;; load vendored stuff
(setq vendor-dir (concat "~/.emacs.d/" "vendor/"))
(add-to-list 'load-path vendor-dir)

(push "~/.emacs.d/org-mode/lisp" load-path)

;; emacs-starter-kit
(load-file "~/.emacs.d/emacs-starter-kit/init.el")

;; textmate mode
;; thankgod
;; This minor mode exists to mimick TextMate's awesome features.
;;    ⌘T - Go to File
;;  ⇧⌘T - Go to Symbol
;;    ⌘L - Go to Line
;;  ⇧⌘L - Select Line (or expand Selection to select lines)
;;    ⌘/ - Comment Line (or Selection/Region)
;;    ⌘] - Shift Right (currently indents region)
;;    ⌘[ - Shift Left  (not yet implemented)
;;  ⌥⌘] - Align Assignments
;;  ⌥⌘[ - Indent Line
;;    ⌥↑ - Column Up
;;    ⌥↓ - Column Down
;;  ⌘RET - Insert Newline at Line's End
;;  ⌥⌘T - Reset File Cache (for Go to File)
(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
(require 'textmate)
(textmate-mode)

;; (load "mt/bindings")
;; (load "mt/modes")
;; (load "mt/theme")
;; (load "mt/temp_files")
;; (load "mt/github")
;; (load "mt/git")

;; (vendor-dir 'ack)
;; (vendor-dir 'cheat)
;; (vendor 'magit)
;; (vendor-dir 'gist)
;; (vendor-dir 'growl)
;; (vendor-dir 'textile-mode)
;; (vendor-dir 'yaml-mode)
;; (vendor-dir 'open-file-in-github)

(setq tags-file-name ".TAGS")
(setq-default tab-width 4)
(setq cua-highlight-region-shift-only t)
(prefer-coding-system 'utf-8)
(setq gist-view-gist t)

;; no splash
(setq inhibit-startup-message t)

;; from defunkt
;; Dired
(require 'dired)
;; remap 'o' in dired mode to open a file
(defun dired-open-mac ()
  (interactive)
  (let ((file-name (dired-get-file-for-visit)))
    (if (file-exists-p file-name)
        (call-process "/usr/bin/open" nil 0 nil file-name))))
(define-key dired-mode-map "o" 'dired-open-mac)
;; prefer dired over dumping dir list to buffer
(global-set-key "\C-x\C-d" 'dired)



;; use M-x irc instead???
;; emacs IRC mode
(require 'erc)
;; make sure to use wildcards for e.g. freenode as the actual server
;; name can be be a bit different, which would screw up autoconnect
(erc-autojoin-mode t)
(setq erc-autojoin-channels-alist
  '((".*\\.freenode.net" "#emacs" "#gnu" "#github" "#logicalawesome" "#thechangelog")
    (".*\\.gimp.org" "#unix")))
;; switch to ERC with Ctrl+c e
(global-set-key (kbd "C-c e") 'djcb-erc-start-or-switch)

;; (setq ns-pop-up-frames nil)

(savehist-mode 1)

;; sets all prompts to "y or n"
(fset 'yes-or-no-p 'y-or-n-p)


(define-key osx-key-mode-map (kbd "A-w") 'kill-this-buffer)

(global-set-key [f5] 'call-last-kbd-macro)
;; (require 'magit)
;; (define-key global-map [f6] 'magit-status)


;; emacs
(define-key emacs-lisp-mode-map (kbd "A-r") 'eval-buffer)

; bash
;; (setq auto-mode-alist (cons '("\\.bashrc" . sh-mode) auto-mode-alist))

; obj-c
(setq auto-mode-alist (cons '("\\.m$" . objc-mode) auto-mode-alist))

; magit
;; (eval-after-load 'magit
;;   '(progn
;;      (set-face-foreground 'magit-diff-add "green3")
;;      (set-face-foreground 'magit-diff-del "red3")))

;; from defunkt
;; textmate.el
;; (vendor 'textmate)
;; (textmate-mode)
;; (setq textmate-find-files-command "git ls-tree --full-tree --name-only -r HEAD")

(global-set-key "\C-cg"  'goto-line)
(global-set-key "\C-ca"  'apply-macro-to-region-lines)


;; use spaces instead of tabs
(setq-default indent-tabs-mode nil)

(defun insert-soft-tab ()
  (interactive)
  (insert "    "))

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; font
(set-face-font 'default "-apple-inconsolata-medium-r-normal--20-0-72-72-m-0-iso10646-1")

(require 'ido)
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)

;; gist
;; (add-to-list 'load-path "~/.emacs.d/vendor/gist.el")
;; (require 'gist)

;; python
;; (load-file "~/.emacs.d/emacs-for-python/epy-init.el")

;; org-mode
;; (load-file "~/.emacs.d/org-mode/lisp/org.el")

;; notational velocity org-mode
;; (load-file "~/.emacs.d/vendor/org-velocity.el")

;; jekyll-mode
;;(load-file "~/.emacs.d/vendor/jekyll.el")
;;(require 'jekyll)

;; highlighting-todo-fixme-and-friends
;; stole from http://emacs-fu.blogspot.com/2008/12/highlighting-todo-fixme-and-friends.html
;; only handles c code obj-c, c++, etc.
(add-hook 'c-mode-common-hook
          (lambda ()
            (font-lock-add-keywords nil
               '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))

;; python version of the above
(add-hook 'python-mode-hook
          (lambda ()
            (font-lock-add-keywords nil
               '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))

;; open buffer consisting of TODOs
;; (pop-to-buffer "*TODO*")

;; Register jumping
;; 'C-x r j e' to open DotEmacs
(set-register ?e '(file . "~/.emacs"))
;; 'C-x r j i' to open an ideas file
(set-register ?i '(file . "~/org/ideas.org"))

;; emacs todo list mode
;; http://lamberta.posterous.com/emacs-todo-list-mode
;;(add-to-list 'load-path "~/emacs/lisp/")    ;my lisp dir
;;(autoload 'todo-list-mode "todo-list-mode") ;load when needed
;a simple function that opens the file and switches to todo-list-mode.
(defun open-todo-list ()
 (interactive)
 (find-file "~/notes/TODO") ;path to my todo list
 (todo-list-mode)) 
;then bind to control-f12 so i can call it with one keystroke
;this works well for me because i also bind calendar to f12
(global-set-key [C-f12] 'open-todo-list)
;; could have opened it this way
;; (set-register ?o '(file . "~/notes/TODO"))
;; With that, pressing C-x r j o RET would just open your file (you
;; need to add a file header to make it “todo-list-mode” aware)

;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(global-font-lock-mode 1)                     ; for all buffers
(add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only


;; Browse kill-ring
;; (require 'browse-kill-ring)
;; (defadvice yank-pop (around kill-ring-browse-maybe (arg) activate)
;;  "If last action was not a yank, run `browse-kill-ring' instead."
;;  (if (not (eq last-command 'yank))
;;      (browse-kill-ring)
;;    ad-do-it))


;; this section updates a file immediately after changes to another one were made
;; from http://tsdh.wordpress.com/2009/03/04/integrating-emacs-org-mode-with-the-awesome-window-manager/
;; update agenda file after changes to org files
(defun th-org-mode-init ()
  (add-hook 'after-save-hook 'th-org-update-agenda-file t t))
(add-hook 'org-mode-hook 'th-org-mode-init)
;; that's the export function
(defun th-org-update-agenda-file (&optional force)
  (interactive)
  (save-excursion
    (save-window-excursion
      (let ((file "/tmp/org-agenda.txt"))
        (org-agenda-list)
        (org-write-agenda file)))))
;; do it once at startup
(th-org-update-agenda-file t)



