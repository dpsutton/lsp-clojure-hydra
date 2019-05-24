# LSP Clojure hydra

This requires a [PR](https://github.com/emacs-lsp/lsp-mode/pull/855) to be accepted in lsp-mode before it can be used to add support for namespace cleaning:

## Usage:

``` emacs-lisp
(require 'lsp-clojure-hydra)
(global-set-key (kbd "C-c C-l") 'lsp-clojure-refactor-menu/body)
```

Hitting `C-c C-l` will pop up a nice hydra with all the available refactorings at the moment.
