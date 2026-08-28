{ pkgs, ... }:

{
  home.packages = with pkgs; [
    btop
    fastfetch
    fetch
    neovim
    tmux
  ];
}
