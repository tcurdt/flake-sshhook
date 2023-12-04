{ config, pkgs, ... }:
{
  nix = {
    packageOverrides = pkgs: rec {
      myPackage = pkgs.myPackage.overrideAttrs (oldAttrs: {
        preInstall = ''
          mkdir -p $out/etc/foo
        '';
      });
    };
  };

  users.extraUsers.deploy = {
    isNormalUser = true;
    createHome = true;
    home = "/home/foo";
    description = "foo";
    extraGroups = ["wheel"];
  };

  security.sudo.wheelNeedsPassword = false;
  security.sudo.extraConfig = ''
    foo ALL=(ALL:ALL) ALL
  '';

}
