;;; lsp-clojure-hydra.el --- hydra for lsp-clojure refactorings  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  dan sutton

;; Author: dan sutton <dan@dan-aclaimant-mbp.local>
;; Keywords: tools, convenience
;; Package-Requires: ((hydra "0.15.0") (lsp-mode "6.0")
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(require 'hydra)
(require 'lsp-mode)
(require 'lsp-clojure)

(defhydra lsp-clojure-refactor-menu (:color blue :hint nil)
  "
Threading                      Code Manip                      Namespace                       Misc
------------------------------------------------------------------------------------------------------------------------------------------------------
_th_: Thread first             _el_: Expand let                _cn_: Clean ns                  _cp_: Cycle privacy
_tf_: Thread first all         _il_: Introduce let             _am_: Add missing libspec       _cc_: Cycle coll              
_tt_: Thread last              _ml_: Move to let                                                             
_tl_: Thread last all          _ef_: Extract function                                            
_ua_: Unwind all                                                                                 
_uw_: Unwind thread                                                                              
"

  ("cp" lsp-clojure-cycle-privacy)
  ("cn" lsp-clojure-clean-ns)
  ("cc" lsp-clojure-cycle-coll)
  ("am" lsp-clojure-add-missing-libspec)
  ("el" lsp-clojure-expand-let)
  ("il" lsp-clojure-introduce-let)
  ("ef" lsp-clojure-extract-function)
  ("ml" lsp-clojure-move-to-let)
  ("th" lsp-clojure-thread-first)
  ("tf" lsp-clojure-thread-first-all)
  ("tt" lsp-clojure-thread-last)
  ("tl" lsp-clojure-thread-last-all)
  ("ua" lsp-clojure-unwind-all)
  ("uw" lsp-clojure-unwind-thread))


(provide 'lsp-clojure-hydra)
;;; lsp-clojure-hydra.el ends here
