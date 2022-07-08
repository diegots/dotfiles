

## ffmpeg
- Extract audio from video file w/o conversion: ```ffmpeg -i $orig.m4a -vn -acodec copy $dest.aac```

## Screencast with Kazam

Kazam's h264 output it's not directly visible within Whatsapp. In order to fix this problem, ffmepg can be used to transcode the file:

```
ffmpeg -i $input_file -c:V libx264 -strict experimental -tune fastdecode \
    -pix_fmt yuv420p $output_file
```

#screencast

#ffmpeg