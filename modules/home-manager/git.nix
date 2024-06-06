{ pkgs, lib, config, ... }:

{
  programs.git = {
      enable = true;
      userName = "BenMasel";
      userEmail = "masel.benjamin@gmail.com";
      extraConfig = {
        core.editor = "nvim";
      };
  };
}
