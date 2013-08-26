(ns dna)

(defn to-rna [sequence]
  (clojure.string/replace sequence \T \U))
