{ lib, buildInputs, ... }:

lib.package {
  pname = "myPackage";
  version = "1.0";
  src = ./.;
  isLibrary = false;

  # configFile = pkgs.writeText "config.json"
  #   ''
  #   example config file bla bla
  #   '';

  # environment.etc = {
  #   nanorc = {
  #     text = ''
  #       whatever you want to put in the file goes here.
  #     '';
  #     mode = "0440";
  #   };
  # };

  # environment.etc = {
  #   somerc.source = /etc/somerc;
  # };

  # environment.etc = {
  #   aDir.source = ./aDir;
  # };

  meta = with lib; {
    description = "My custom package";
    license = licenses.mit;
  };
}
