{ config, pkgs, ... }: {
  home-manager.users.tpham = {
    home.packages = [ pkgs.cacert ];
    programs.git = {
      userEmail = "thomas.pham@ithings.ch";
      userName = "Thomas Pham";
      signing = {
        key = "thomsa.pham@ithings.ch";
        signByDefault = true;
      };
    };
  };
}
