function SearchQuickfixFiles()
  local qflist = vim.fn.getqflist()
  local files = {}

  for _, item in ipairs(qflist) do
    local filepath = vim.fn.bufname(item.bufnr)
    if filepath ~= '' then
      local abs_path = vim.fn.fnamemodify(filepath, ':p')
      if abs_path ~= '' then
        table.insert(files, abs_path)
      end
    end
  end

  -- files = vim.fn.uniq(files)
  -- require('telescope.builtin').live_grep { search_dirs = files }

  -- Remove duplicates manually to avoid type issues with vim.fn.uniq
  local unique_files = {}
  local hash = {}

  for _, file in ipairs(files) do
    if not hash[file] then
      unique_files[#unique_files + 1] = file
      hash[file] = true
    end
  end

  if #unique_files > 0 then
    require('telescope.builtin').live_grep { search_dirs = unique_files }
  else
    print 'No valid files found in the quickfix list'
  end
end

-- Create a Vim command to run the Lua function
vim.api.nvim_create_user_command('SearchQuickfixFiles', function()
  SearchQuickfixFiles()
end, {})
