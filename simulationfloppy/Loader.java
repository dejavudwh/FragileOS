import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class Loader {
    private Floppy floppyDisk = new Floppy();
    private int MAX_SECTOR_NUM = 18;

    public Loader(String pathName) {
        writeFileToFloppy(pathName, true, 0, 1);
    }

    public void makeFloppy() {
        writeFileToFloppy("../kernel/kernel.bat", false, 1, 1);
        floppyDisk.makeFloppy("../FragileOS.img");
    }

    private void writeFileToFloppy(String pathName, boolean bootable, int cylinder, int beginSec) {
        File file = new File(pathName);
        InputStream in;

        try {
            in = new FileInputStream(file);
            byte[] buf = new byte[512];
            if (bootable) {
                buf[510] = 0x55;
                buf[511] = (byte) 0xaa;
            }

            while (in.read(buf) > 0) {
                floppyDisk.writeFloppy(Floppy.MagneticHead.MagneticHead0, cylinder, beginSec, buf);

                System.out.println("Load file " + pathName.substring(3) + " to floppy with cylinder: " + cylinder + " and sector:" + beginSec);
                if (beginSec >= MAX_SECTOR_NUM) {
                    beginSec = 0;
                    cylinder++;
                }

                beginSec++;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Loader loader = new Loader("../boot/boot.bat");
        loader.makeFloppy();
    }
}
