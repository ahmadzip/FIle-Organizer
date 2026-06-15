# FIle Organizer

A simple batch script that automatically organizes files in a folder by category.

_Disclaimer: If you read the code and wonder "why is it done this way?", the answer is most likely "because that is what worked."_

---

## Features

- **Auto Folder Creation:** Creates category folders automatically if they don't exist.
- **Fixed Categories:** Only creates `Music`, `Video`, `Documents`, `Compressed`, `Programs`, and `Others`.
- **Move, Not Copy:** Files are cut and moved — no duplicates created.
- **Self-Aware:** The `.bat` script will never move itself into `Programs`.
- **Safe for `!` Filenames:** The script avoids delayed expansion, so `!` in filenames is handled correctly.
- **Cleanup:** Empty folders are removed automatically after the process.
- **SSD Safe:** `move` within the same drive only updates MFT entries, no NAND writes.

---

## Usage

1. Download `FileOrganizer.bat`.
2. Place it inside the folder you want to organize.
3. Double-click `FileOrganizer.bat`.

> **Warning:** Make sure the script is placed in the correct folder. All files in that directory will be moved into category subfolders.

---

## Categories

```text
Music/
  mp3 wav flac aac m4a ogg opus wma mid midi

Video/
  mp4 mkv avi mov wmv webm flv m4v 3gp mpg mpeg ts

Documents/
  pdf doc docx xls xlsx ppt pptx
  txt rtf md odt epub mobi
  json xml yaml yml csv

Compressed/
  zip rar 7z tar gz bz2 xz iso cab arj

Programs/
  exe msi bat cmd ps1 appx appxbundle apk jar

Others/
  images, web files, torrents, fonts, and everything else
```

---

## License

See the [LICENSE](LICENSE) file for details.
