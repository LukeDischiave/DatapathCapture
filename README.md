# Datapath Video Capture Scripts
These scripts grab video feed from a Datapath Vision-E1 capture card using the DirectShow API, and audio from the line-in port on a Windows machine to create a video file.

If you would like to oversample your video feed, that must be done in the Datapath device crossbar before you use these scripts to capture the video stream. If you oversample, you may wish to use [FFmpegUpscalers](https://github.com/LukeDischiave/FFmpegUpscalers) to re-size your footage optimally.

More info on oversampling is available [here](https://lukedischiave.neocities.org).
## Description
These scripts are designed to capture component YPbPr video from a Datapath Vision-E1 on a Windows system and audio from the user's line-in port. The reuslting output is a video: "output.mkv".

The default audio device where the script gets its audio from is Line-In port. **Make sure you replace: "Line In (Realtek(R) Audio)" in the script file with the name of the audio device that you want to use for your capture (it should have the words "Line-In" in its name)**

To find the name of your audio device on Win 10/11, go to Settings -> Sound -> More sound settings. \
In the new window, go to the "Recording" tab and double-click on the device you are using for your capture audio.\
Copy the name of the name of this device (it should already be selected), and paste it into the script file.

The default video device is "Datapath VisionRGB-E1 Video 01". This shouldn't change between users, as long as you use a Datapath Vision-E1 card.

## How to use
**Note:** FFmpeg.exe and FFprobe.exe must be in the source directory in order to use. It can be downloaded [here](https://www.gyan.dev/ffmpeg/builds/).\
Download the lastest release and unzip it. Copy the contents of the "bin" folder and paste them into the same directory where you have the scripts downloaded.

1.) Simply run the batch file 

The script captures YUV444p video at a constant quality rate of 14 for NTSC, and 13 for PAL. The original source framerate remains intact. Audio bitrate is 240kb/s and sample rate is 48k. The result is effectively lossless quality. 

### Capture_NTSC: 
Designed to capture footage from a Japanese/American Nintendo 64 console

### Capture_PAL:
Designed to capture footage from a European Nintendo 64 console. The only difference between Capture_NTSC is that this has a slightly higher capture quality due to the increased pixel resolution of PAL N64 consoles.



