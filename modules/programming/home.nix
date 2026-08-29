{ pkgs, ... }:

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
      (nvim-treesitter.withPlugins (
        p: with p; [
          nix
          lua
          luau
        ]
      ))
      nvim-lspconfig
      fidget-nvim
      blink-cmp
      luau-lsp-nvim
      conform-nvim
      nvim-lint
      catppuccin-nvim

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
    luau-lsp

    # formatters
    nixfmt
    stylua

    # linters
    selene
  ];

  xdg.configFile."nvim".source = ./nvim-config;
}
