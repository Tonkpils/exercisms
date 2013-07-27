(ns bob
  (:use [clojure.string :only [blank? upper-case]]))

(defn- silence? [msg] (blank? msg))
(defn- query?   [msg] (.endsWith msg "?"))
(defn- shout?   [msg] (= msg (upper-case msg)))

(defn response-for [msg]
  (cond
    (silence? msg) "Fine, be that way."
    (query?   msg) "Sure."
    (shout?   msg) "Woah, chill out!"
    :else "Whatever."))
