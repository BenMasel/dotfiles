{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.ags.homeManagerModules.default
  ];

  home.packages = with pkgs; [
    bun
  ];

  programs.ags = {
    enable = true;
    # ags is at ~/.config/ags because idk how to get configDir working
  };
}
