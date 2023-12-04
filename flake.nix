{
  description = "my package";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosModules.default = {

      users.users.foo = {
        isNormalUser = true;
      };

      security.sudo = {
        enable = true;
        extraRules = [{
          commands = [
            {
              command = "FIXME path to script from within the flake";
              options = [ "NOPASSWD" ];
            }
          ];
          groups = [ "wheel" ]; # FIXME only the user "foo"
        }];
      };

    };
  };
}
