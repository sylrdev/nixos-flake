{ pkgs, ... } :

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [

    ];
  };

  xdg.configFile."nvim".source = ./nvim-config;
}
