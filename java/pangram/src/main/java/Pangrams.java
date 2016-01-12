/**
 * Created by leo on 1/7/16.
 */

import java.util.Set;
import java.util.HashSet;

public class Pangrams {

    public static boolean isPangram(String sentence) {
        if (sentence.isEmpty()) {
            return false;
        }

        Set<Character> alphabet = buildAlphabet();

        sentence = sentence.toLowerCase();
        for (int i = 0; i < sentence.length(); i++) {
            char letter = sentence.charAt(i);
            alphabet.remove(letter);
        }

        return alphabet.isEmpty();
    }

    private static Set<Character> buildAlphabet() {
        Set<Character> alphabet = new HashSet<>();

        for (char letter = 'a'; letter < 'z'; letter++) {
            alphabet.add(letter);
        }

        return alphabet;
    }

}
