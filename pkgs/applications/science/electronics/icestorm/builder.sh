source $stdenv/setup

export DESTDIR=$out

echo SRC $src
cp -r $src ./src
chmod -R +w src
echo "HERE"
pwd
ls -l
cd src
echo "HERE"
pwd
ls -l

make -e -j$(nproc)
make -e install
