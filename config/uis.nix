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
    indent-blankline = {
      enable = true;
      settings = {
        exclude = {
        filetypes = [
              ""
              "checkhealth"
              "help"
              "lspinfo"
              "packer"
              "TelescopePrompt"
              "TelescopeResults"
              "yaml"
              "dashboard"
          ];
        buftypes = [
            "terminal"
            "quickfix"
          ];
        };
      };
    };
  };
  colorschemes.ayu ={
    enable = true;
    settings = {
      mirage = true;
      overrides = {
        style="dark";
      };
    };
  };
  # colorscheme = "everforest"; 
  # colorschemes.everforest = {
  #   enable = true;
  #   # settings = {
  #   #   devicons = true;
  #   #   day_night.enable = true;
  #   #   day_night.day_filter = "spectrum";
  #   #   day_night.night_filter = "soda";
  #   # };
  # };
}
