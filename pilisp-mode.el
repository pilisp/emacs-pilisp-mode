;;; pilisp-mode.el --- Major mode for PiLisp code -*- lexical-binding: t; -*-

;; Copyright © 2023 Daniel Gregoire
;;
;; Authors: Daniel Gregoire <daniel.l.gregoire@gmail.com>
;; Maintainer: Daniel Gregoire <daniel.l.gregoire@gmail.com>
;; URL: http://github.com/pilisp/emacs-pilisp-mode
;; Keywords: languages pilisp lisp clojure
;; Version: 5.16.0
;; Package-Requires: ((emacs "25.1"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Provides font-lock, indentation, navigation and basic refactoring for the
;; PiLisp programming language (https://github.com/pilisp/pilisp).

;; Using pilisp-mode with paredit or smartparens is highly recommended.

;; Here are some example configurations:

;;   ;; require or autoload paredit-mode
;;   (add-hook 'pilisp-mode-hook #'paredit-mode)

;;   ;; require or autoload smartparens
;;   (add-hook 'pilisp-mode-hook #'smartparens-strict-mode)

;; See inf-pilisp (http://github.com/pilisp/emacs-inf-pilisp) for
;; basic interaction with PiLisp subprocesses.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:


(require 'clojure)
(require 'lisp-mnt)

(defgroup pilisp nil
  "Major mode for editing PiLisp code.  Derived from clojure-mode."
  :prefix "pilisp-"
  :group 'languages
  :link '(url-link :tag "GitHub" "https://github.com/pilisp/emacs-pilisp-mode")
  :link '(emacs-commentary-link :tag "Commentary" "pilisp-mode"))


;;;###autoload
(define-derived-mode pilisp-mode clojure-mode "PiLisp"
  "Major mode for editing PiLisp code.")


;;;###autoload
(progn
  (add-to-list 'auto-mode-alist
               '("\\.\\(pil\\)\\'" . pilisp-mode)))

(provide 'pilisp-mode)

;; Local Variables:
;; coding: utf-8
;; End:

;;; pilisp-mode.el ends here
