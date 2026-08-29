{ ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      nor = "sudo nixos-rebuild switch --flake";
      nor-test = "sudo nixos-rebuild test --flake";
      ncg = "sudo nix-collect-garbage --delete-older-than";
    };
  };
}
