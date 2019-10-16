firstdir="/home/rileyball/Programs/Shell/switcheroo/old/"
seconddir="/home/rileyball/Programs/Shell/switcheroo/Old/"
hostdir="/home/rileyball/Programs/Shell/switcheroo/"
filename=$hostdir"newtext.txt"
if [ -d $firstdir ]; then
	backupfile=$firstdir"newtext.txt"
	newbackup=$seconddir"newtext.txt"
	mkdir $seconddir;
	mv $filename $newbackup
	mv $backupfile $filename
	rm -rf $firstdir;
	exit 0
fi

if [ -d $seconddir ]; then
	backupfile=$seconddir"newtext.txt"
	newbackup=$firstdir"newtext.txt"
	mkdir $firstdir;
	mv $filename $newbackup
	mv $backupfile $filename
	rm -rf $seconddir;
	exit 0
fi
