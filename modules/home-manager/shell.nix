{ pkgs, lib, config, ... }:

{
  programs.zsh = {
      enable = true;
      oh-my-zsh = {
          enable = true;
          theme = "alanpeabody";
      };
  };
}
