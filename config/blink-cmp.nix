{
  plugins.friendly-snippets.enable = true;
  plugins.blink-cmp = {
    enable = true;
    settings = {
      signature = true;
      keymap.preset = "default";
      sources = {
        cmdline = [];
        providers = {
          buffer = {
            score_offset = -7;
          };
          lsp = {
            fallbacks = [];
          };
        };
      };
    };
  };
}
