
(in-package :common-lisp-user)

(defpackage :less-parser.system
  (:use :common-lisp :asdf))

(in-package :less-parser.system)

(defsystem :less-parser
  :name "less-parser"
  :author "Thomas de Grivel <thoxdg@gmail.com>"
  :version "0.2"
  :description "LESS parser"
  :depends-on ("less-lexer" "parser-stream" "str")
  :components
  ((:file "package")
   (:file "less-parser" :depends-on ("package"))))

(defsystem :less-parser/test
  :depends-on ("babel-stream"
               "less-parser"
               "unistd-stream")
  :components
  ((:file "test")))
