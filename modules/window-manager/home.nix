{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty
    rofi
    brightnessctl
    playerctl
  ];

  xdg.configFile."niri".source = ./niri-config;
}
