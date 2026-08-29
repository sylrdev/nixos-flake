{
  description = "Sylr's NixOS configuration";

  inputs = {
    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };

  outputs =
    { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";

      make-config =
        hostname:
        nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            (./hosts + "/${hostname}/configuration.nix")

            inputs.home-manager.nixosModules.default
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                extraSpecialArgs = { inherit inputs; };
                users.sylr = ./hosts + "/${hostname}/home.nix";
              };
            }
          ];
        };
    in
    {
      nixosConfigurations = {
        thinkpad-t480 = make-config "thinkpad-t480";
      };
    };
}
