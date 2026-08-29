{ ... }:

{
  home = {
    username = "sylr";
    homeDirectory = "/home/sylr";
    stateVersion = "26.05";
  };

  imports = [
    ../../modules/default/home.nix
    ../../modules/shell/home.nix
    ../../modules/git/home.nix
    ../../modules/programming/home.nix
    ../../modules/window-manager/home.nix
  ];
}
