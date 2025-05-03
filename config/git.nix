{
  plugins.gitsigns = {
    enable = true;
  };
  keymaps = [
    {
      action = "<Cmd>Gitsigns blame<CR>";
      key = "<Leader>gB";
      options = {
        desc = "[G]it blame [B]uffer";
        silent = true;
      };
    }
    {
      action = "<Cmd>Gitsigns toggle_current_line_blame<CR>";
      key = "<Leader>gb";
      options = {
        desc = "[G]it [b]lame line";
        silent = true;
      };
    }
  ];
}
