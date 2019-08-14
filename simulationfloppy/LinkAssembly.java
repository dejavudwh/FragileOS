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
import java.util.HashMap;

public class LinkAssembly {
	String fileName = "";
    private BufferedReader fileReader = null;
    StringBuffer fileBuffer = null;
	HashMap<String, ArrayList<String>> funcMap = new HashMap<>();

    public LinkAssembly(String fileName) {
		this.fileName = fileName;
        try {
			fileReader = new BufferedReader(new FileReader(fileName));
			File f = new File(fileName);
			fileBuffer = new StringBuffer((int)f.length()); 
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		initFuncMap();
    }

	public void initFuncMap() {
		ArrayList<String> funcs1 = new ArrayList<>();
		funcs1.add("_init_pit");
		funcs1.add("_timer_alloc");
		funcs1.add("_inthandlerfortimer");
		funcs1.add("_gettimercontroller");
		funcMap.put("timectl", funcs1);

		ArrayList<String> funcs2 = new ArrayList<>();
		funcs2.add("_task_init");
		funcs2.add("_task_switch");
		funcMap.put("tasktimer", funcs2);
	}

	public String subSemi(String line) {
		int index = line.indexOf(";");
		if (index > 0) {
			line = line.substring(0, line.indexOf(";"));
		}

		return line;
	}

    public void process() {
		int count = 0;
    	String lineText = null;
		String curLabel = "";
    	try {
			while ((lineText = fileReader.readLine()) != null) {
				String line = lineText.toLowerCase();
				line = subSemi(line);
				int index = line.indexOf(":");
				String label = curLabel;
				if (index != -1) {
					label = line.substring(0, index);
				}
				
				if (!label.contains("?_")) {
					curLabel = label;
				}

				if (line.contains(".text") || line.contains("global") || line.contains("extern") || line.contains(".bss:") || (line.contains("section") && !line.contains(".rdata"))) {
					continue;
				}
				
				if (line.contains(".rdata")) {
					do {
						lineText = fileReader.readLine();
						if (lineText == null) {
							break;
						}
						lineText = subSemi(lineText);
						// System.out.println(lineText);
					} while (lineText.contains(".rdata") || !lineText.contains(":") || lineText.equals(""));
				}	

				//TODO Other variables need to be modified, for now
				// lineText = lineText.replaceAll(".bss", "_timerctl");
				if (funcMap.get("timectl").contains(curLabel)) {
					lineText = lineText.replaceAll(".bss", "_timerctl");
					// System.out.println(curLabel);
				} else if (funcMap.get("tasktimer").contains(curLabel)) {
					lineText = lineText.replaceAll(".bss", "_task_timer");
					// System.out.println(curLabel);
				}
				
				if (lineText == null) {
					break;
				}
				fileBuffer.append(lineText).append("\r\n");
			}
			
			fileReader.close();
			BufferedWriter bw = new BufferedWriter(new FileWriter(fileName));
			bw.write(fileBuffer.toString());
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

    public static void main(String[] args) {
		String fileName = "";
		if (args[0].equals("ckernel.asm")) {
			fileName = "../kernel/ckernel.asm";
		} else {
			fileName = "../app/" + args[0];
		}
        LinkAssembly la = new LinkAssembly(fileName);
        la.process();
    }
}