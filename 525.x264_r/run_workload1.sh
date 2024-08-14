#!/bin/bash
echo 'Running: ./x264_r_base.riscv-64 --pass 2 --stats x264_stats_copy.log --bitrate 1000 --dumpyuv 200 --frames 1000 -o BuckBunny_New.264 BuckBunny.yuv 1280x720'
./x264_r_base.riscv-64 --pass 2 --stats x264_stats_copy.log --bitrate 1000 --dumpyuv 200 --frames 1000 -o BuckBunny_New.264 BuckBunny.yuv 1280x720
