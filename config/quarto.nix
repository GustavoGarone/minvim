{
  plugins = {
    quarto = {
      enable = true;
      settings = {
        codeRunner = {
            default_method = "molten";
            enabled = true;
          };
        debug = false;
        lspFeatures = {
          diagnostics = {
            enabled = true;
            triggers = [
              "BufWritePost"
            ];
          };
          enabled = true;
          chunks = "curly";
          languages = [
            "r"
            "python"
            "julia"
            "bash"
            "html"
          ];
          completion.enabled = true;
        };
      };
    };
    # vim-slime = {
    #   enable = true;
    #   settings = {
    #     bracketed_paste = 0;
    #     default_config = {
    #       socket_name = "default";
    #       target_pane = "{last}";
    #     };
    #     dont_ask_default = 0;
    #     no_mappings = 0;
    #     paste_file = "$HOME/.slime_paste";
    #     preserve_curpos = 1;
    #     target = "neovim";
    #     vimterminal_cmd = null;
    #   };
    # };
    molten = {
      enable = true;
      settings = {
        auto_image_popup = true;
        auto_init_behavior = "init";
        auto_open_html_in_browser = false;
        auto_open_output = true;
        cover_empty_lines = false;
        copy_output = false;
        enter_output_behavior = "open_then_enter";
        image_provider = "image.nvim";
        output_crop_border = true;
        output_virt_lines = false;
        output_win_border = [ "" "━" "" "" ];
        output_win_hide_on_leave = true;
        output_win_max_height = 20;
        output_win_max_width = 80;
        save_path.__raw = "vim.fn.stdpath('data')..'/molten'";
        tick_rate = 500;
        use_border_highlights = false;
        limit_output_chars = 10000;
        wrap_output = false;
      };
    };
    image = {
      enable = true;
      maxWidth = 100;
      maxHeight = 40;
      integrations.markdown.filetypes =
        [
          "markdown"
          "vimwiki"
          "quarto"
        ];
    };
    otter = {
      enable = true;
    };
  };
}
