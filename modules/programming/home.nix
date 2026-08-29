{ pkgs, ... } :

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      nvim-tree-lua
      mini-pick
      lualine-nvim
      nvim-autopairs
      gitsigns-nvim

      # dependencies
      nvim-web-devicons # nvim-tree-lua, lualine-nvim
    ];
  };

  home.packages = with pkgs; [
    # dependencies
    ripgrep # vimPlugins.mini-pick
  ];

  xdg.configFile."nvim".source = ./nvim-config;
}
