{ pkgs, lib, config, ... }: {

  options = {
    hyprlandHM.enable = 
      lib.mkEnableOption "enables hyprland home-manager";
  };

  config = lib.mkIf config.hyprlandHM.enable {
    wayland.windowManager.hyprland = {
      # allow home-manager to configure hyprland
      enable = true;
      
      settings = {
        "monitor" = "DP-1,2560x1440@144,0x0,1.25";
        "$terminal" = "alacritty";

        "exec-once" = [
          "$terminal"
          "ags" # maybe add in here the path like in the bind SUPER H omg :(
        ];
        "$mainMod" = "SUPER";

        general = {
          # Set to true enable resizing windows by clicking and dragging on borders and gaps
          resize_on_border = "false";

          layout = "dwindle";
        };

        bind = [
          "$mainMod, Q, exec, $terminal"
          "$mainMod, F, exec, firefox"
          "$mainMod, C, killactive"
          "$mainMod, E, exec, nautilus"
          "$mainMod, V, togglefloating"
          "$mainMod, R, exec, ags -c /etc/nixos/modules/ags/config.js & ags -t applauncher"
          "$mainMod, J, togglesplit"
        ];

        bindm = [
          "$mainMod, mouse:272, movewindow"
          "$mainMod, mouse:273, resizewindow"
        ];

        animations = {
          enabled = "yes";
          bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
          animation = [
            "windows, 1, 5, myBezier"
            "windowsOut, 1, 7, default, popin 80%"
            "border, 1, 10, default"
            "fade, 1, 7, default"
            "workspaces, 1, 6, default"
          ];
        };

        decoration = {
          rounding = 15;
          drop_shadow = "yes";
          shadow_range = 8;
          shadow_render_power = 2;
          "col.shadow" = "rgba(00000044)";

          dim_inactive = false;

          blur = {
            enabled = true;
            size = 8;
            passes = 3;
            new_optimizations = "on";
            noise = 0.01;
            contrast = 0.9;
            brightness = 0.8;
            popups = true;
          };
        };
      };
    };

    services.hyprpaper = {
      enable = true;
      settings = {
        preload = ["~/Pictures/Wallpapers/d2.jpg"];
        wallpaper = [",~/Pictures/Wallpapers/d2.jpg"];
      };
    };

    programs.waybar = {
      enable = true;
    };
  };
}
