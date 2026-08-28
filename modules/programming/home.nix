{ pkgs, ... } :

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      nvim-tree-lua

      # dependencies
      nvim-web-devicons
    ];
  };

  xdg.configFile."nvim".source = ./nvim-config;
}
