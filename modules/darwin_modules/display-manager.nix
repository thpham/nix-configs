{ config, pkgs, ... }: {
  
  services.yabai = {
    enable = true;
    package = pkgs.yabai;
    #config = {};
  };

  services.skhd = {
    enable = true;
    package = pkgs.skhd;
    skhdConfig = builtins.readFile ../dotfiles/skhd/skhdrc;
  };

  services.spacebar = {
    enable = true;
    package = pkgs.spacebar;
    config = {
      clock_format     = "%R";
      space_icon_strip = "   ";
      text_font        = ''"Helvetica Neue:Bold:12.0"'';
      icon_font        = ''"FontAwesome:Regular:12.0"'';
      background_color = "0xff202020";
      foreground_color = "0xffa8a8a8";
      power_icon_strip = " ";
      space_icon       = "";
      clock_icon       = "";
    };
  };

}
