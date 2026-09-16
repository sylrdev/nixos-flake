{ pkgs, ... }:

{
  home.packages = with pkgs; [
    rofi
    brightnessctl
    playerctl
  ];

  xdg.configFile."niri".source = ./niri-config;
}
