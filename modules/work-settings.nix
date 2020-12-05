{ config, pkgs, ... }: {
  home.packages = [ pkgs.cacert ];
  programs.git = {
    enable = true;
    userEmail = "thomas.pham@sicpa.com";
    userName = "Thomas Pham";
    extraConfig = { http.sslVerify = true; };
  };
}
