{ pkgs, inputs, ... }:

{
  home = {
    username = "sylr";
    homeDirectory = "/home/sylr";
    stateVersion = "26.05";
  };

  imports = [
    ../../modules/default/home.nix
    ../../modules/git/home.nix
  ];
}
