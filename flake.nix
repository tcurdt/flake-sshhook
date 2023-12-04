{
  description = "my package";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  # outputs = _: {
  #   nixosModules.myconfig = { self, nixpkgs }: {
  #     users.users.foo = {
  #       isNormal = true;
  #     };
  #     security.sudo = {
  #       enable = true;
  #       extraRules = [{
  #         commands = [
  #           {
  #             command = "FIXME path to script from within the flake";
  #             options = [ "NOPASSWD" ];
  #           }
  #         ];
  #         groups = [ "wheel" ]; # FIXME only the user "foo"
  #       }];
  #     };
  #   };
  # };

  # outputs = { self, nixpkgs }: {
  #   nixosModules = {
  #     myconfig = {
  #       users.users.foo = {
  #         isNormal = true;
  #       };
  #       security.sudo = {
  #         enable = true;
  #         extraRules = [{
  #           commands = [
  #             {
  #               command = "FIXME path to script from within the flake";
  #               options = [ "NOPASSWD" ];
  #             }
  #           ];
  #           groups = [ "wheel" ]; # FIXME only the user "foo"
  #         }];
  #       };
  #     };
  #   };
  # };

  outputs = { self, nixpkgs }: {

    nixosModules = {

      users.users.foo = {
        isNormal = true;
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
