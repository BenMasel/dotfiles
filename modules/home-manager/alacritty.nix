{
  lib,
  config,
  ...
}: { 
    programs.alacritty = {
      enable = true;

      settings = {
        window = {
          opacity = 0.5;
          padding = {
            x = 10;
            y = 10;
          };
        };

        selection.save_to_clipboard = true;

        font = {
          size = 11;

          normal = {
            family = "JetBrainsMono Nerd Font";
            style = "Regular";
          };
          bold = {
            family = "JetBrainsMono Nerd Font";
            style = "Bold";
          };
        };

        colors = {
          primary = {
            background = "0x000000";
            foreground = "0xc0caf5";
          };
          cursor = {
            text = "0xc0caf5";
            cursor = "0xffffff";
          };
          selection = {
            text = "CellForeground"; # "0xc0caf5";
            background = "0x33467c";
          };
          normal = {
            black = "0x15161e";
            red = "0xf7768e";
            green = "0x9ece6a";
            yellow = "0xe0af68";
            blue = "0x7aa2f7";
            magenta = "0xbb9af7";
            cyan = "0x7dcfff";
            white = "0xa9b1d6";
          };
          bright = {
            black = "0x414868";
            red = "0xf7768e";
            green = "0x9ece6a";
            yellow = "0xe0af68";
            blue = "0x7aa2f7";
            magenta = "0xbb9af7";
            cyan = "0x7dcfff";
            white = "0xc0caf5";
          };
        };
      };
  };
}
