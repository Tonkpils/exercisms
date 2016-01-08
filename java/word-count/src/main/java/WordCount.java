import java.util.Map;
import java.util.HashMap;

public class WordCount {

    public Map<String, Integer> phrase(String phrase) {
        Map<String, Integer> wordCount = new HashMap<>();
        String[] words = phrase.split("\\W+");

        for(String word : words) {
            word = word.toLowerCase();
            int count = wordCount.getOrDefault(word, 0);
            wordCount.put(word, count + 1);
        }

        return wordCount;
    }
}
