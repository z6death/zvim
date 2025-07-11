return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      log_level = "error",
      auto_session_enable_last_session = false,
      auto_session_enabled = true,
      auto_save_enabled = true,
      auto_restore_enabled = true,
      auto_session_use_git_branch = false,
      session_lens = {
        load_on_setup = false,
      },
      auto_session_suppress_dirs = {
        "~/", "~/Downloads", "/",
      },
      session_dir = vim.fn.stdpath("config") .. "/sessions/",
    })
  end,
}

