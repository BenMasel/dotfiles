{ pkgs, lib, config, ... }:

{
  programs.zsh = {
      enable = true;
      oh-my-zsh = {
          enable = true;
          theme = "af-magic";
      };
  };

  programs.zoxide = {
      enable = true;
      enableZshIntegration = true;
      options = ["--cmd cd"];
  };
}
