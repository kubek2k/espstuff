{ pkgs ? import <nixpkgs> {} }:
let 
  pt = pkgs.python37;
#  platformio = pt.pkgs.buildPythonPackage rec {
    #pname = "platformio";
    #version = "5.1.1";

    #src = pt.pkgs.fetchPypi {
      #inherit pname version;
      #sha256 = "00krkjfv6brj6nd5si492nd4dszmk2ggk8y57364vqrdxj98cs61";
    #};

    #propagatedBuildInputs = [ pt.pkgs.aiofiles pt.pkgs.ajsonrpc pt.pkgs.starlette pt.pkgs.uvicorn pt.pkgs.wsproto ];
  #};
  esptool = pt.pkgs.buildPythonPackage rec {
    pname = "esptool";
    version = "3.0";

    src = pt.pkgs.fetchPypi {
      inherit pname version;
      sha256 = "0d69rd9h8wrzjvfrc66vmz4qd5hly2fpdcwj2bdrlb7dbwikv5c7";
    };

    propagatedBuildInputs = [pt.pkgs.reedsolo pt.pkgs.bitstring pt.pkgs.cryptography pt.pkgs.ecdsa pt.pkgs.pyserial];
  };

in
  pkgs.mkShell {
    buildInputs = [ esptool pkgs.screen ];
  }
