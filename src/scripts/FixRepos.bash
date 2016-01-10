fn="$1"
mv "$1" "$1.bak"
sed 's~/usr/src/Repository/~~' "$1.bak" > "$1"
rm "$1.bak"
