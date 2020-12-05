{ config, pkgs, ... }: {
  home.file = {
    brewfile = {
      source = ./Brewfile;
      target = "Brewfile";
    };
  };

  xdg.configFile = {
    nixpkgs = {
      source = ./../..;
      recursive = true;
    };
    skhd = {
      source = ./skhd;
      recursive = true;
    };
    yabai = {
      source = ./yabai;
      recursive = true;
    };
  };
}
