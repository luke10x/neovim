" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/luke/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/luke/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/luke/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/luke/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/luke/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  edge = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/edge"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n\31\0\2\5\0\2\0\5'\2\0\0\18\3\0\0'\4\1\0&\2\4\2L\2\2\0\6)\6(V\0\2\6\0\5\0\14\18\4\1\0009\2\0\1'\5\1\0B\2\3\2\15\0\2\0X\3\2�'\2\2\0X\3\1�'\2\3\0'\3\4\0\18\4\2\0\18\5\0\0&\3\5\3L\3\2\0\6 \b\t \nerror\nmatch�\3\1\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\3\0003\4\4\0=\4\5\0033\4\6\0=\4\5\3=\3\b\2B\0\2\1K\0\1\0\foptions\1\0\0\0\26diagnostics_indicator\0\1\0\15\22max_prefix_length\3\15\22buffer_close_icon\b\rmappings\2\16diagnostics\rnvim_lsp\17number_style\16superscript\rtab_size\3\18\fnumbers\fordinal\20max_name_length\3\18\tview\16multiwindow\23right_trunc_marker\b\22left_trunc_marker\b\20separator_style\nslant\15close_icon\b\25enforce_regular_tabs\2\18modified_icon\b●\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/vim-commentary"
  }
}

time("Defining packer_plugins", false)
-- Config for: nvim-bufferline.lua
time("Config for nvim-bufferline.lua", true)
try_loadstring("\27LJ\2\n\31\0\2\5\0\2\0\5'\2\0\0\18\3\0\0'\4\1\0&\2\4\2L\2\2\0\6)\6(V\0\2\6\0\5\0\14\18\4\1\0009\2\0\1'\5\1\0B\2\3\2\15\0\2\0X\3\2�'\2\2\0X\3\1�'\2\3\0'\3\4\0\18\4\2\0\18\5\0\0&\3\5\3L\3\2\0\6 \b\t \nerror\nmatch�\3\1\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\3\0003\4\4\0=\4\5\0033\4\6\0=\4\5\3=\3\b\2B\0\2\1K\0\1\0\foptions\1\0\0\0\26diagnostics_indicator\0\1\0\15\22max_prefix_length\3\15\22buffer_close_icon\b\rmappings\2\16diagnostics\rnvim_lsp\17number_style\16superscript\rtab_size\3\18\fnumbers\fordinal\20max_name_length\3\18\tview\16multiwindow\23right_trunc_marker\b\22left_trunc_marker\b\20separator_style\nslant\15close_icon\b\25enforce_regular_tabs\2\18modified_icon\b●\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time("Config for nvim-bufferline.lua", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
