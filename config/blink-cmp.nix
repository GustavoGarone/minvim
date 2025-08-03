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

  plugins.blink-cmp = {
    enable = true;
    settings = {
      signature.enabled = true;
      keymap.preset = "super-tab";
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
        };
      };
    };
  };
}
