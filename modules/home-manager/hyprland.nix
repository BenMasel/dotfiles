{ pkgs, lib, config, ... }: {

  options = {
    hyprlandHM.enable = 
      lib.mkEnableOption "enables hyprland home-manager";
  };

  config = lib.mkIf config.hyprlandHM.enable {
    wayland.windowManager.hyprland = {
      # allow home-manager to configure hyprland
      enable = true;
    };
   };
}
