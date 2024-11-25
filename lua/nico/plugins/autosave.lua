return {
  '0x00-ketsu/autosave.nvim',
  -- Lazy-load on specific events
  event = { "InsertLeave", "TextChanged" },
  config = function()
    require('autosave').setup({
      enabled = true, -- Enable the plugin
      execution_message = "AutoSaved at " .. vim.fn.strftime("%H:%M:%S"),
      events = { "InsertLeave", "TextChanged" },
      conditions = {
        exists = true,           -- Save only if file exists
        filename_is_not = {},    -- Exclude specific filenames
        filetype_is_not = {},    -- Exclude specific filetypes
      },
      write_all_buffers = false, -- Only save the current buffer
      debounce_delay = 135       -- Time (in ms) before saving after an event
    })
  end
}
