{ pkgs, lib, config, ... }:

{
  programs.zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
      oh-my-zsh = {
          enable = true;
          theme = "af-magic";
      };
      shellAliases = {
          nrs = "sudo nixos-rebuild switch --flake /etc/nixos#default";
      };
  };

  programs.zoxide = {
      enable = true;
      enableZshIntegration = true;
      options = ["--cmd cd"];
  };

  programs.btop = {
    enable = true;
  };

  programs.bat = {
    enable = true;
    # ! Don't know if this does anything it was copied and pasted
    themes = {
      dracula = {
        src = pkgs.fetchFromGitHub {
          owner = "dracula";
          repo = "sublime"; # Bat uses sublime syntax for its themes
          rev = "26c57ec282abcaa76e57e055f38432bd827ac34e";
          sha256 = "019hfl4zbn4vm4154hh3bwk6hm7bdxbr1hdww83nabxwjn99ndhv";
        };
        file = "Dracula.tmTheme";
      };
    };
  };
}
