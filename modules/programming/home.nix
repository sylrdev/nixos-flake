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
      nvim-lspconfig
      fidget-nvim
      blink-cmp
      
      # dependencies
      nvim-web-devicons # nvim-tree-lua, mini-pick, lualine-nvim
      lazydev-nvim # blink-cmp
    ];
  };

  home.packages = with pkgs; [
    # dependencies
    ripgrep # vimPlugins.mini-pick
    tree-sitter # vimPlugins.nvim-treesitter

    # language servers
    nixd
    lua-language-server
  ];

  xdg.configFile."nvim".source = ./nvim-config;
}
