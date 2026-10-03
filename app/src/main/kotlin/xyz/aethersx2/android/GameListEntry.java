package xyz.aethersx2.android;

public class GameListEntry {
    public int discType;
    public int region;
    public String path;
    public String title;
    public String serial;
    public long size;
    public long crc;
    public long mtime;
    public long serialCRC;
    public int flags;
    public int compatibility;
    public String extra;

    public GameListEntry(int discTypeOrdinal, int regionOrdinal, String path, String title,
                         String serial, long size, long crc, long mtime, long serialCRC,
                         int flags, int compatOrdinal, String extra) {
        this.discType = discTypeOrdinal;
        this.region = regionOrdinal;
        this.path = path != null ? path : "";
        this.title = title != null ? title : "";
        this.serial = serial != null ? serial : "";
        this.size = size;
        this.crc = crc;
        this.mtime = mtime;
        this.serialCRC = serialCRC;
        this.flags = flags;
        this.compatibility = compatOrdinal;
        this.extra = extra != null ? extra : "";
    }

    public String getPath() { return path; }
    public String getTitle() { return title; }
    public String getSerial() { return serial; }
    public long getSize() { return size; }
    public long getCrc() { return crc; }
    public int getCompatibility() { return compatibility; }
}
