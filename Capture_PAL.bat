ffmpeg -f dshow -i video="Datapath VisionRGB-E1 Video 01":audio="Line in at rear panel (Blue) (Realtek(R) Audio)" -c:a aac -b:a 240k -c:v libx264 -crf 13 -preset slow -pix_fmt yuv444p output.mkv

REM Luke Dischiave