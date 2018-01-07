# yt2mp3
Simple CLI Youtube to MP3 Converter, made by hacking together existing tools.

Mainly works on Ubuntu for now.

### Features
- Downloads and converts videos to MP3 using `youtube-dl`
- Trim songs by specifying the timestamp using `ffmpeg`
- Simple ID3 tags support using `mid3v2`

### Installation 
Install dependencies:
```
sudo apt install youtube-dl python-mutagen ffmpeg
```

### Usage
```
yt2mp3 [-t|--tags] [-o <output_file>] [--start <start_timestamp> --end <end_timestamp>] <url>
```

#### Examples
Download into the default filename (based on video title)
```
yt2mp3 <url>
```

Specify ID3 tags before downloading
```
yt2mp3 -t <url>
```

Specify output file
```
yt2mp3 -o <output_file> <url>
```

Download and trim mp3 from 00:00:00 to 00:02:00. Format for timestamp should follow `hh:mm:ss`
```
yt2mp3 --start "00:00:00" --end "00:02:00" <url>
```
>>>>>>> Add source files
