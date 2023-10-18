(package-initialize)
(require 'package)
(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-laod-file (expand-file-name "~/.emacs.d/config.org")))
