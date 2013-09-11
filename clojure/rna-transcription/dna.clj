(ns dna)

(def thymine \T)
(def uracil  \U)

(defn to-rna [sequence]
  (clojure.string/replace sequence thymine uracil))
