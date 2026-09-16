{ pkgs, lib, ... }:

{
  services = {
    desktopManager.plasma6.enable = true;
    displayManager.plasma-login-manager.enable = true;
  };

  services.displayManager.defaultSession = lib.mkForce "plasma";

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    ark
    discover
    elisa
    gwenview
    kate
    konsole
    kwallet
    kwalletmanager
    kwrited
    okular
    qrca
  ];
}
