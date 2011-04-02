;; Save backups in one place
;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir "/Users/abugosh/tmp/emacs_autosaves/")
(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
          (if buffer-file-name
              (concat "#" (file-name-nondirectory buffer-file-name) "#")
            (expand-file-name
             (concat "#%" (buffer-name) "#")))))

;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
(defvar backup-dir (concat "/tmp/emacs_backups/" (user-login-name) "/"))
(setq backup-directory-alist (list (cons "." backup-dir)))

(defun refresh-file ()
  (interactive)
  (revert-buffer t t t))
(global-set-key [f5] 'refresh-file)

;; org-mode
(add-to-list 'load-path (concat dotfiles-dir "/vendor/org-mode/lisp"))
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org-install)

;; Override
(add-hook 'org-mode-hook
          (lambda()
            (local-set-key [(control meta return)] 'org-insert-heading)
            (local-set-key [(control shift left)] 'previous-buffer)
            (local-set-key [(control shift right)] 'next-buffer)
            (local-set-key [(meta shift right)] 'ido-switch-buffer)
            (local-set-key [(meta shift left)] 'magit-status)
            ))

(add-to-list 'load-path (concat dotfiles-dir "/vendor/scala-mode"))
(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-to-list 'load-path (concat dotfiles-dir "vendor/ensime/elisp"))
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(load (concat dotfiles-dir "vendor/nxhtml/autostart.el"))

(textmate-mode)
(setq *textmate-gf-exclude* (concat *textmate-gf-exclude* "|target|lib_managed|project/boot|\.keep"))
(setq *textmate-project-roots* (cons "ivy.xml" (cons "pom.xml" *textmate-project-roots*)))

(setq browse-url-browser-function 'browse-default-macosx-browser)

(load (concat dotfiles-dir "vendor/ess/lisp/ess-site.el"))
(require 'ess-site)

(defalias 'qrr 'query-replace-regexp)

;;
;; Never understood why Emacs doesn't have this function.
;;
(defun rename-file-and-buffer (new-name)
 "Renames both current buffer and file it's visiting to NEW-NAME." (interactive "sNew name: ")
 (let ((name (buffer-name))
	(filename (buffer-file-name)))
 (if (not filename)
	(message "Buffer '%s' is not visiting a file!" name)
 (if (get-buffer new-name)
	 (message "A buffer named '%s' already exists!" new-name)
   (progn
     (rename-file name new-name 1)
     (rename-buffer new-name)
     (set-visited-file-name new-name)
     (set-buffer-modified-p nil))))))

;;
;; Never understood why Emacs doesn't have this function, either.
;;
(defun move-buffer-file (dir)
 "Moves both current buffer and file it's visiting to DIR." (interactive "DNew directory: ")
 (let* ((name (buffer-name))
	 (filename (buffer-file-name))
	 (dir
	 (if (string-match dir "\\(?:/\\|\\\\)$")
	 (substring dir 0 -1) dir))
	 (newname (concat dir "/" name)))

 (if (not filename)
	(message "Buffer '%s' is not visiting a file!" name)
  (progn
    (copy-file filename newname 1)
    (delete-file filename)
    (set-visited-file-name newname)
    (set-buffer-modified-p nil)
    t))))


;; Keyboard

;; Split Windows
(global-set-key [f6] 'split-window-horizontally)
(global-set-key [f7] 'split-window-vertically)
(global-set-key [f8] 'delete-window)

;; Some Mac-friendly key counterparts
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-z") 'undo)

(global-set-key [(meta shift right)] 'ido-switch-buffer)
(global-set-key [(meta shift up)] 'recentf-ido-find-file)
(global-set-key [(meta shift down)] 'ido-find-file)
(global-set-key [(meta shift left)] 'magit-status)

(global-set-key [(control shift left)] 'previous-buffer)
(global-set-key [(control shift right)] 'next-buffer)

(global-set-key [(meta H)] 'delete-other-windows)

(global-set-key [(control w)] 'backward-kill-word) ;; (meta d) is opposite
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key [(meta N)] 'cleanup-buffer)

(global-set-key [(control \])] 'indent-rigidly)

(global-set-key (kbd "M-/") 'dabbrev-expand)

(global-set-key (kbd "RET") 'newline-and-indent)

;; Fullscreen keybinding
(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

;; Change the command key into meta since this version of emacs wants
;; it to be alt :(
(setq ns-command-modifier 'meta)

;; Other

(prefer-coding-system 'utf-8)

(server-start)

;; Zenburn rocks!
(color-theme-zenburn)
