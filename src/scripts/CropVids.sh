for fn in ~/"SharedVideo/Music Videos"/*/*/*.mpg ; do
    /usr/local/bin/mencoder "$fn" -o "$fn.avi" -mc 0  -ovc lavc -oac copy -lavcopts vcodec=mpeg4:vbitrate=8000:aspect=16/9 -vf crop=720:320,hqdn3d
    echo $fn >> Converted;
    mv "$fn" "$fn.conv";
done
