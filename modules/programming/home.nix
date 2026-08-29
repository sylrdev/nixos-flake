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
	  (nvim-treesitter.withPlugins (p: with p; [
		nix
		lua
		luau
	  ]))
      
      # dependencies
      nvim-web-devicons # nvim-tree-lua, lualine-nvim
    ];
  };

  home.packages = with pkgs; [
    # dependencies
    ripgrep # vimPlugins.mini-pick
    tree-sitter # vimPlugins.nvim-treesitter
    gcc # vimPlugins.nvim-treesitter
  ];

  xdg.configFile."nvim".source = ./nvim-config;
}
