{ config, pkgs, ... }:

{
  imports = [ ./raspberry.nix ];

  # System-wide software
  environment.systemPackages = [ pkgs.gitMinimal ];
  programs.vim.defaultEditor = true;

  # Enable mDNS
  services.avahi.enable = true;
  services.avahi.publish = {
    enable = true;
    domain = true;
    userServices = true;
  };

  i18n.consoleKeyMap = "be-latin1";
}
