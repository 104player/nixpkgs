{ stdenv, fetchgit, python3, libftdi }:

stdenv.mkDerivation rec {
  name = "icestorm-git-2015-10-26";

  src = fetchgit {
    url = "https://github.com/cliffordwolf/icestorm.git";
    rev = "b53f442b86dcfc32c097c258d5632917404f2bb9";
    sha256 = "72e1b244de34389183bb22a4cf213e2821df07b9b5d4018288a3b79762e62d8c";
  };

#  doCheck = false;
  
  nativeBuildInputs = [ python3 libftdi ];

  builder = ./builder.sh;

  meta = {
    description = "Documenting the bitstream format of Lattice iCE40 FPGAs and providing simple tools for analyzing and creating bitstream files.";
    longDescription = ''
      Project IceStorm aims at documenting the bitstream format of Lattice iCE40 FPGAs and providing simple tools for analyzing and creating bitstream files.
    '';
    homepage = http://www.clifford.at/icestorm/;
#    license = stdenv.lib.licenses.gpl3Plus;
#    maintainers = [ stdenv.lib.maintainers.eelco ];
    platforms = stdenv.lib.platforms.all;
  };
}
