import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;

public class Floppy {
    enum MagneticHead {
        /**
         * Analog disk head
         */
        MagneticHead0,
        MagneticHead1
    }

    public static int SECTOR_SIZE = 512;
    private static int CYLINDER_COUNT = 80;
    private static int SECTORS_COUNT = 18;

    private MagneticHead magneticHead = MagneticHead.MagneticHead0;
    private int currentCylinder = 0;
    private int currentSector = 0;

    /**
     * A disk has two sides
     */
    private HashMap<Integer, ArrayList<ArrayList<byte[]>>> floppy = new HashMap<>();

    public Floppy() {
        carveFloppy();
    }

    private void carveFloppy() {
        floppy.put(MagneticHead.MagneticHead0.ordinal(), carveSide());
        floppy.put(MagneticHead.MagneticHead1.ordinal(), carveSide());
    }

    private ArrayList<ArrayList<byte[]>> carveSide() {
        ArrayList<ArrayList<byte[]>> floppyDisk = new ArrayList<>();

        for (int i = 0; i < CYLINDER_COUNT; i++) {
            floppyDisk.add(carveCylinder());
        }

        return floppyDisk;
    }

    private ArrayList<byte[]> carveCylinder() {
        ArrayList<byte[]> cylinder = new ArrayList<>();
        for (int i = 0; i < SECTORS_COUNT; i++) {
            byte[] sector = new byte[SECTOR_SIZE];
            cylinder.add(sector);
        }

        return cylinder;
    }

    public void makeFloppy(String pathname) {
        File file = new File(pathname);
        try {
            DataOutputStream out = new DataOutputStream(new FileOutputStream(file));
            for (int cylinder = 0; cylinder < CYLINDER_COUNT; cylinder++) {
                for (int head = 0; head <= MagneticHead.MagneticHead1.ordinal(); head++) {
                    for (int sector = 1; sector <= SECTORS_COUNT; sector++) {
                        byte[] buf = readFloppy(MagneticHead.values()[head], cylinder, sector);
                        out.write(buf);
                    }

                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public byte[] readFloppy(MagneticHead head, int cylinderNum, int sectorNum) {
        setMagneticHead(head);
        setCylinder(cylinderNum);
        setSector(sectorNum);

        ArrayList<ArrayList<byte[]>> disk = floppy.get(this.magneticHead.ordinal());
        ArrayList<byte[]> cylinder = disk.get(this.currentCylinder);

        return cylinder.get(this.currentSector);
    }

    public void writeFloppy(MagneticHead head, int cylinderNum, int sectorNum, byte[] buf) {
        setMagneticHead(head);
        setCylinder(cylinderNum);
        setSector(sectorNum);

        ArrayList<ArrayList<byte[]>> disk = floppy.get(this.magneticHead.ordinal());
        ArrayList<byte[]> cylinder = disk.get(this.currentCylinder);

        byte[] buffer = cylinder.get(this.currentSector);
        System.arraycopy(buf, 0, buffer, 0, buf.length);
    }

    public void setMagneticHead(MagneticHead head) {
        magneticHead = head;
    }

    public void setCylinder(int cylinder) {
        if (cylinder < 0) {
            this.currentCylinder = 0;
        } else if (cylinder >= CYLINDER_COUNT) {
            this.currentCylinder = 79;
        } else {
            this.currentCylinder = cylinder;
        }
    }

    public void setSector(int sector) {
        if (sector < 0) {
            this.currentSector = 0;
        } else if (sector > SECTORS_COUNT) {
            this.currentSector = 18 - 1;
        } else {
            this.currentSector = sector - 1;
        }
    }
}
