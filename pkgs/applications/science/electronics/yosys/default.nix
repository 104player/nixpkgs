{ stdenv, fetchgit, git, clang, bison, flex, readline, gawk, tcl, tcllib, libffi, graphviz, pkgconfig, python3, libcxx, libcxxStdenv }:

stdenv.mkDerivation rec {
  name = "yosys-git-2015-10-28";

  src = fetchgit {
    url = "https://github.com/cliffordwolf/yosys.git";
    rev = "e69efec588ddfa65b7a2d6970bab7a3bcfa77b04";
    sha256 = "8f11dbf54aa04b3c17b81e38a057d6fae2454725652ecff846046932254b8510";
  };

  nativeBuildInputs = [ git clang bison flex readline gawk tcl tcllib libffi graphviz pkgconfig python3 libcxx libcxxStdenv ];

#  builder = ./builder.sh;

  meta = {
    description = "Verilog synthesis";
    longDescription = ''
    Yosys is a framework for Verilog RTL synthesis. 
    It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.
    '';
    homepage = http://www.clifford.at/yosys/;
    platforms = stdenv.lib.platforms.all;
  };
}
