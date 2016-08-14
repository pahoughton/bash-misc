convert "$1" -bordercolor white -border 1x1 \
          -alpha set -channel RGBA -fuzz 20% \
          -fill none -floodfill +0+0 white \
          -shave 1x1    "$1.clearbg.png"
