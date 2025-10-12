{
  pkgs,
  lib,
  ...
}: {
  plugins.copilot-vim = {
    enable = true;
    settings = {
      node_command = lib.getExe pkgs.nodejs_24;
    };
  };
}
