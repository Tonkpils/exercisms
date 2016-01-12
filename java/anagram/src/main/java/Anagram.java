import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;

public class Anagram {

    private String letters;
    private String original;

    public Anagram (String string) {
        string = string.toLowerCase();
        char[] letters = string.toCharArray();
        Arrays.sort(letters);
        this.letters = new String(letters);
        this.original = string;
    }

    public ArrayList<String> match(List<String> words) {
        ArrayList<String> matches = new ArrayList<String>();

        words.forEach((word) -> {
            String lowerWord = word.toLowerCase();
            char[] letters = lowerWord.toCharArray();
            Arrays.sort(letters);
            if (!this.original.equals(lowerWord) && this.letters.equals(new String(letters))) {
                matches.add(word);
            }
        });

        return matches;
    }
}
