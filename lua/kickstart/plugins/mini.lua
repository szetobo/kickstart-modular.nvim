return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      require('mini.align').setup()
      require('mini.animate').setup()
      require('mini.bracketed').setup()
      require('mini.files').setup {
        windows = {
          preview = true,
          width_focus = 40,
          width_preview = 40,
        },
      }
      require('mini.indentscope').setup()
      require('mini.jump').setup()
      require('mini.jump2d').setup()
      require('mini.splitjoin').setup()
      require('mini.trailspace').setup()

      require('mini.misc').setup()
      MiniMisc.setup_restore_cursor()

      -- -- Simple and easy statusline.
      -- --  You could remove this setup call if you don't like it,
      -- --  and try some other statusline plugin
      -- local statusline = require 'mini.statusline'
      -- -- set use_icons to true if you have a Nerd Font
      -- statusline.setup { use_icons = vim.g.have_nerd_font }
      --
      -- -- You can configure sections in the statusline by overriding their
      -- -- default behavior. For example, here we set the section for
      -- -- cursor location to LINE:COLUMN
      -- ---@diagnostic disable-next-line: duplicate-set-field
      -- statusline.section_location = function()
      --   return '%2l:%-2v'
      -- end

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim

      vim.keymap.set('n', '-', require('mini.files').open, { desc = 'Open mini.files' })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
