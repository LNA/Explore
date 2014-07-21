(defrecord Nobel [prize])
(deftype Pulitzer [prize])

(defprotocol Award
  (present [this recipient]))

(defrecord Oscar [category]
  Award
  (present [this recipient]
    (print (str "Congratulations on your "
                (:category this) " Oscar, "
                recipient
                "!"))))

(deftype Razzie [category]
  Award
  (present [this recipient]
    (print (str "You're really the "
                (.category this) ", "
                recipient
                "... sorry."
                ))))


(meditations
  "Holding records is meaningful only when the record is worthy of you"
  (= "peace" (.prize (Nobel. "peace"))) ;the period indicates a constructor giving us an instance of the Nobel record.  Can access the prize value by calling .prize.``

  "Types are quite similar"
  (= "literature" (.prize (Pulitzer. "literature")))

  "Records may be treated like maps"
  (= "physics" (:prize (Nobel. "physics")))

  "While types may not"
  (= nil (:prize (Pulitzer. "poetry")))

  "Further study reveals why"
  (= [true false]
     (map map? [(Nobel. "chemistry") ;Nobel can be a map because its a record
                (Pulitzer. "music")])) ;Pulitzer it is a type

   "Either sort of datatype can define methods in a protocol"
  (= "Congratulations on your Best Picture Oscar, Evil Alien Conquerors!"
     (with-out-str (present (Oscar. "Best Picture") "Evil Alien Conquerors")))

  "Surely we can implement our own by now"
  (= "You're really the Worst Picture, Final Destination 5... sorry."
     (with-out-str (present (Razzie. "Worst Picture") "Final Destination 5"))))
