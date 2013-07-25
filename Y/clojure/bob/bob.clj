(ns bob
  (:use [clojure.string :only [blank? upper-case]]))

(defn response-for [msg]
  (cond
    (blank? msg) "Fine, be that way."
    (.endsWith msg "?") "Sure."
    (= (upper-case msg) msg) "Woah, chill out!"
    :else "Whatever."))
