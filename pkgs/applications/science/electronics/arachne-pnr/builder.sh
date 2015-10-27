


source $stdenv/setup

export DESTDIR=$out

ICEPACK=`command -v icepack`
echo ICEPACK $ICEPACK

ICEBIN=`dirname $ICEPACK`
echo ICEBIN $ICEBIN

export ICEBOX=$ICEBIN/../share/icebox
echo ICEBOX $ICEBOX

#echo SRC $src
cp -r $src ./src
chmod -R +w src
#echo "HERE"
#pwd
#ls -l
cd src
#echo "HERE"
#pwd
#ls -l

make -e -j$(nproc)
make -e install


