
{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.systemPackages = with pkgs; [
    gnome.gnome-tweaks
    gnomeExtensions.blur-my-shell
    gnomeExtensions.dash-to-dock
    elementary-xfce-icon-theme
  ];

  # Excluding GNOME Applications
  environment.gnome.excludePackages = (with pkgs; [
	# for packages that are pkgs.***
  	gnome-tour
  	gnome-connections
    xterm
  ]) ++ (with pkgs.gnome; [
 	# for packages that are pkgs.gnome.***
  	epiphany # web browser
  	geary # email reader
  	evince # document viewer
  ]);
}
