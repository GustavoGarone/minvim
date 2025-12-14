{
  pkgs,
  lib,
  ...
}: {
  # plugins.copilot-vim = {
  #   enable = true;
  #   settings = {
  #     node_command = lib.getExe pkgs.nodejs_24;
  #   };
  # };
  plugins.copilot-lua = {
    enable = true;
    settings = {
      node_command = lib.getExe pkgs.nodejs_24;
      suggestion.enabled = false;
      panel.enabled = false;
    };
    lazyLoad.enable = false;
    lazyLoad.settings.cmd = ["Copilot"];
  };

  plugins.avante = {
    enable = true;
    # lazyLoad.enable = true;
    # lazyLoad.settings.cmd = [
    #   "AvanteAsk"
    #   "AvanteBuild"
    #   "AvanteChat"
    #   "AvanteEdit"
    #   "AvanteFocus"
    #   "AvanteRefresh"
    #   "AvanteSwitchProvider"
    #   "AvanteShowRepoMap"
    #   "AvanteToggle"
    # ];
    settings = {
      provider = "copilot";
    };
  };
  plugins.which-key = {
    settings.spec = [
      {
        __unkeyed-1 = "at";
        __unkeyed-2 = "<cmd>AvanteToggle<cr>";
        icon = " ";
        desc = "Toggle Avante";
      }
      {
        __unkeyed-1 = "<leader>aa";
        __unkeyed-2 = "<cmd>AvanteAsk<cr>";
        icon = " ";
        desc = "Open AI Ask";
      }

      {
        __unkeyed-1 = "<leader>ac";
        __unkeyed-2 = "<cmd>AvanteChat<cr>";
        icon = " ";
        desc = "Open AI Chat";
      }

      {
        __unkeyed-1 = "<leader>ae";
        __unkeyed-2 = "<cmd>AvanteEdit<cr>";
        icon = " ";
        desc = "Edit with instruction";
      }
    ];
  };
}
