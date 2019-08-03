import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.ArrayList;

public class LinkAssembly {
    private BufferedReader fileReader = null;
    StringBuffer fileBuffer = null;

    public LinkAssembly() {
        try {
			fileReader = new BufferedReader(new FileReader("../gui/desktop.asm"));
			File f = new File("../gui/desktop.asm");
			fileBuffer = new StringBuffer((int)f.length()); 
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
    }

    public void process() {
    	String lineText = null;
    	try {
			while ((lineText = fileReader.readLine()) != null) {
				String line = lineText.toLowerCase();
				if (line.contains("global") || line.contains("extern") || line.contains("section")) {
					continue;
				}
				
				fileBuffer.append(lineText).append("\r\n");
			}
			
			fileReader.close();
			BufferedWriter bw = new BufferedWriter(new FileWriter("../kernel/ckernel.asm"));
			bw.write(fileBuffer.toString());
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

    public static void main(String[] args) {
        LinkAssembly la = new LinkAssembly();
        la.process();
    }
}