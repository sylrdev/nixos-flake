{ pkgs, ... }:

{
  home.packages = with pkgs; [
    btop
    fastfetch
    tmux
    tree
  ];
}
