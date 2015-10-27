{ stdenv, fetchgit, icestorm, git }:

stdenv.mkDerivation rec {
  name = "arachne-pnr-git-2015-10-26";

  src = fetchgit {
    url = "https://github.com/cseed/arachne-pnr.git";
    rev = "22e09908047ccafa0f2f831a93964b1a02e45f78";
    sha256 = "beb3e2cb48e471506d24ccafa56e8e0f0bcb33b9876b4bd01db2940d4d6a4037";
  };

  nativeBuildInputs = [ icestorm git ];

  builder = ./builder.sh;

  meta = {
    description = "Arachne place and route";
    longDescription = ''
    '';
    homepage = http://www.clifford.at/icestorm/;
    platforms = stdenv.lib.platforms.all;
  };
}
