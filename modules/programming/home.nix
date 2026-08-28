{ pkgs, ... } :

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      nvim-tree-lua
      mini-pick

      # dependencies
      nvim-web-devicons # nvim-tree-lua
    ];
  };

  home.packages = with pkgs; [
    # dependencies
    ripgrep # vimPlugins.mini-pick
  ];

  xdg.configFile."nvim".source = ./nvim-config;
}
