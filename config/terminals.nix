{
  plugins = {
    toggleterm = {
      enable = true;
      settings = {
        float_opts = {
          border = "curved";
          height = 30;
          width = 130;
        };
        open_mapping = "[[<c-t>]]";
      };
    };
  };
  keymaps = [
    {
      action = "<C-\\><C-n>";
      key = "<Esc>";
      mode="t";
    }
    {
      action = "<cmd>Toggleterm";
      key = "<Leader>td";
      options = {
        desc = "[T]erminal [d]own";
        silent = true;
      };
    }
  ];
}
