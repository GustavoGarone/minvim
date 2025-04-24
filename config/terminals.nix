{
  plugins = {
    toggleterm = {
      enable = true;
      settings = {
        direction = "vertical";
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
      action = "<C-\><C-n>";
      key = "<Esc>";
      mode="t";
    }
  ];
}
