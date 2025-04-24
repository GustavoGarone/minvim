{
  plugins = {
    bufferline.enable = true;
    which-key.enable = true;
    web-devicons.enable = true;
    lualine.enable = true;
    colorizer.enable = true;
    notify.enable = true;
    neo-tree = {
      enable = true;
    };
    toggleterm = {
      enable = true;
      settings = {
        direction = "float";
        float_opts = {
          border = "curved";
          height = 30;
          width = 130;
        };
        open_mapping = "[[<c->]]";
      };
    };
  };
}
