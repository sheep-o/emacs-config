(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package magit
 :ensure t)

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(use-package org-bullets
:ensure t
:config
(add-hook 'org-mode-hook (lambda () (org-bullets-mode))))

(setq org-startup-indented t
      org-ellipsis "  "
      org-pretty-entities t
      org-hide-emphasis-markers t
      org-agenda-block-separator ""
      org-fontify-whole-heading-line t
      org-fontify-done-headline t
      org-fontify-quote-and-verse-blocks t)

(add-hook 'org-mode-hook (lambda ()
   "Beautify Org Checkbox Symbol"
   (push '("[ ]" .  "☐") prettify-symbols-alist)
   (push '("[X]" . "☑" ) prettify-symbols-alist)
   (push '("[-]" . "❍" ) prettify-symbols-alist)
   (push '("#+BEGIN_SRC" . "↦" ) prettify-symbols-alist)
   (push '("#+END_SRC" . "⇤" ) prettify-symbols-alist)
   (push '("#+BEGIN_EXAMPLE" . "↦" ) prettify-symbols-alist)
   (push '("#+END_EXAMPLE" . "⇤" ) prettify-symbols-alist)
   (push '("#+BEGIN_QUOTE" . "↦" ) prettify-symbols-alist)
   (push '("#+END_QUOTE" . "⇤" ) prettify-symbols-alist)
   (push '("#+begin_quote" . "↦" ) prettify-symbols-alist)
   (push '("#+end_quote" . "⇤" ) prettify-symbols-alist)
   (push '("#+begin_example" . "↦" ) prettify-symbols-alist)
   (push '("#+end_example" . "⇤" ) prettify-symbols-alist)
   (push '("#+begin_src" . "↦" ) prettify-symbols-alist)
   (push '("#+end_src" . "⇤" ) prettify-symbols-alist)
   (prettify-symbols-mode)))
