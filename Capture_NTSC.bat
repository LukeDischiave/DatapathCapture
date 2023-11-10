ffmpeg -f dshow -i video="Datapath VisionRGB-E1 Video 01":audio="Line In (Realtek(R) Audio)" -ar 48000 -c:a aac -b:a 240k -c:v libx264 -crf 14 -preset slow -pix_fmt yuv444p output.mkv

REM Luke Dischiave
