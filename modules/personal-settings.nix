{ config, pkgs, ... }: {
  home-manager.users.tpham = {
    home.packages = [ pkgs.cacert ];
    programs.git = {
      userEmail = "thomas.pham@ithings.ch";
      userName = "Thomas Pham";
      signing = {
        key = "A0F2945FCA529E01";
        signByDefault = true;
      };
    };
  };
}
