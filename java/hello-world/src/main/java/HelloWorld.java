public class HelloWorld {

    private static final String GREETING = "Hello, ";

    public static String hello(String name) {
        if (name == null || name.isEmpty()) {
            return GREETING + "World!";
        }
        return GREETING + name + "!";
    }
}
