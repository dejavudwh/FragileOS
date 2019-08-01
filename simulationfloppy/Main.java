import java.io.File;
import java.io.IOException;

public class Main {
    public static void main(String[] args) {
        Loader loader = new Loader("../boot.bat");
        loader.makeFloppy();
    }
}
