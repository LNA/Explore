(defmacro hello [x]
  (str "Hello, " x))

(defmacro infix [form]
  (list (second form) (first form) (nth form 2)))

(defmacro infix-better [form]
  `(~(second form) ; Note the syntax-quote (`) and unquote (~) characters!
    ~(first form)
    ~(nth form 2)  ))

(defmacro r-infix [form]
  (cond (not (seq? form))         ; if the form is not a seq; if its something like a number
        form                      ; retrun the form.
        (= 1 (count form))        ; if the form is a sequence with one number in it,
        `(r-infix ~(first form))  ; recur with the first element of the form.  Yay recursion!!!
        :else                     ; else
        (let [operator (second form)  ; initialize 3 variables
              first-arg (first form)  ;
              others (rest (rest form))]   ;this is the rest of the form
          `(~operator                 ; a list where the first element is the item
            (r-infix ~first-arg)      ; recursive call on first argument
            (r-infix ~others)))))     ; recursive call on everything else

(meditations
  "Macros are like functions created at compile time"
  (= "Hello, Macros!" (hello "Macros!"))

  "Can I haz some infix?"
  (= 10 (infix (9 + 1)))

  "Remember, these are nothing but code transformations"
  (= '(+ 9 1) (macroexpand '(infix (9 + 1))))

  "You can do better than that, hand crafting ftw!"
  (= '(* 10 2) (macroexpand '(infix-better (10 * 2))))

  "Things dont always work as you would like them to... "
  (= '(+ 10 (2 * 3)) (macroexpand '(infix-better ( 10 + (2 * 3)))))

  "Really, you dont understand recursion until you understand recursion"
  (= 36 (r-infix (10 + (2 * 3) + (4 * 5)))))
