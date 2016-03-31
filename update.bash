#A small script to update the conf
SITEDIRLOC="/var/www"
SITEDIRNAME="html"
CONFDIRLOC="/etc"
CONFDIRNAME="apache2"
DIRLOC=""
DIRNAME=""

if [ $1 == "site" ]; then
	DIRLOC=$SITEDIRLOC
	DIRNAME=$SITEDIRNAME

elif [ $1 == "conf" ]; then

	#not implemented yet
	echo "not yet implemented"
	exit 0
	DIRLOC=$CONFDIRLOC
	DIRNAME=$CONFDIRNAME

else

	echo "You done goofed... 'site' or 'conf' doofus"
	exit 0	
fi

sudo service apache2 stop

echo "Copying files..."
sudo mv $DIRLOC/$DIRNAME $DIRLOC/$DIRNAME-backup
sudo cp -r $DIRNAME $DIRLOC


sudo service apache2 start


