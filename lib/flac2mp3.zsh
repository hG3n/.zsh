#!/bin/bash
function flac2mp3() 
{
  parallel ffmpeg -i {} -qscale:a 0 {.}.mp3 ::: *.flac
}
