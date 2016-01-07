import java.util.Map;
import java.util.HashMap;

public class DNA {
    private String dna;
    private Map<Character, Integer> nucleotideCount;

    public DNA(String dna) {
        this.nucleotideCount = new HashMap<Character, Integer>(){{
            put('A', 0);
            put('C', 0);
            put('G', 0);
            put('T', 0);
        }};
        this.dna = dna;

        countNucleotides();
    }

    public int count(Character nucleotide) {
        if (this.nucleotideCount.get(nucleotide) == null) {
            throw new IllegalArgumentException();
        }

        return this.nucleotideCount.get(nucleotide);
    }

    public Map<Character, Integer> nucleotideCounts() {
        return new HashMap<>(this.nucleotideCount);
    }

    private void countNucleotides() {
        this.dna.chars()
                .mapToObj(c -> (char) c)
                .forEach(c -> {
                    if (this.nucleotideCount.get(c) == null) {
                        throw new IllegalArgumentException();
                    }

                    int count = this.nucleotideCount.get(c);
                    this.nucleotideCount.put(c, count + 1);
                });
    }
}
