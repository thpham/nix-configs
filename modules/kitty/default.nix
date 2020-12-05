{ config, pkgs, ... }:
let theme = builtins.readFile ./theme.conf;
in {
  programs.kitty = {
    enable = true;
    font = {
      package = pkgs.jetbrains-mono;
      name = "JetBrains Mono";
    };
    settings = {
      bold_font = "auto";
      bold_italic_font = "auto";
      enable_audio_bell = "no";
      font_size = (if pkgs.stdenv.isDarwin then 14 else 12);
      italic_font = "auto";
      scrollback_lines = 10000;
      strip_trailing_spaces = "smart";
      term = "xterm-256color";

      hide_window_decorations = "yes";
      macos_titlebar_color = "background";
      macos_option_as_alt = "yes";
    };
    extraConfig = ''
      ${theme}
    '';
  };
}
