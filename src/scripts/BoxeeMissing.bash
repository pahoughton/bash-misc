sqlite3 -line  ~/Library/Application\ Support/BOXEE/UserData/Database/boxee_catalog.db 'select strPath from video_files;' | grep strPath | sed 's~.*TAIN/Drobo/Movies/\(.*\).dvdmedia/.*~\1.dvdmedia~' | sort | uniq > boxeeFoundMovies
dir=`pwd`
pushd /Volumes/Drobo/Movies
/bin/ls > $dir/movielist
popd
diff movielist boxeeFoundMovies > boxeeMissing.txt
