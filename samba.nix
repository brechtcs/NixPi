{ config, pkgs, ... }:

{
  networking.firewall.allowedTCPPorts = [ 445 139 ];
  networking.firewall.allowedUDPPorts = [ 137 138 ];

  services.samba.enable = true;
  services.samba.shares."Public" = {
    "path" = "/mnt/share";
    "browseable" = "yes";
    "read only" = "no";
    "guest ok" = "yes";
    "create mask" = "0644";
    "directory mask" = "0755";
  };

  users.users.client.isNormalUser = true;
}
