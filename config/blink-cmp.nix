{
  plugins.friendly-snippets.enable = true;

  plugins.luasnip = {
    enable = true;
    settings.enable_autosnippets = true;
  };

  extraLuaPackages = ps: [
    # Required by luasnip
    ps.jsregexp
  ];

  # plugins.blink-cmp-copilot.enable = true;

  plugins.blink-cmp = {
    enable = true;
    settings = {
      signature.enabled = true;
      keymap.preset = "default";
      completion = {
        accept.auto_brackets = {
          enabled = true;
        };
        documentation.auto_show = true;
      };
      sources = {
        cmdline = [];
        providers = {
          buffer = {
            score_offset = -1;
          };
          lsp = {
            fallbacks = [];
          };
          # copilot = {
          #   async = true;
          #   module = "blink-cmp-copilot";
          #   name = "copilot";
          #   score_offset = 1;
          # };
        };
      };
    };
  };
}
