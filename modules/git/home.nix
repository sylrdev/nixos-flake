{ ... }:

{
  programs.git = {
    enable = true;
    settings.user = {
      name = "sylrdev";
      email = "sylrdev@gmail.com";
    };
  };

  programs.lazygit.enable = true;
}
