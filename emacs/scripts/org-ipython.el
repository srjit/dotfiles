;;; contents for writing jupyter type org files
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (sql . t)
   (ipython . t)
   (jupyter . t)))

;; put <py and press tab in org mode
;; Or C-c C-,  if org mode > 9.2: https://emacs.stackexchange.com/questions/52441/how-to-modify-org-structure-template-alist-after-org-mode-9-2

(setq org-structure-template-alist
      '(("py" . "SRC jupyter-python :session py")
        ("i" . "SRC ipython :session")
        ("r" . "SRC R")
        ("s" . "SRC sql")
        ))


(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)


;; Update for code being on org mode pdf export
;; - newfloat - is a theme
(setq org-latex-listings 'minted
      org-latex-packages-alist '(("newfloat" "minted"))
      org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
