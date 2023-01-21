{ pkgs, config, lib, ... }:

let
  cfg = config.languages.bun;
in
{
  options.languages.bun = {
    enable = lib.mkEnableOption "tools for bun development";
  };

  config = lib.mkIf cfg.enable {
    packages = [
      pkgs.bun
    ];
  };
}
