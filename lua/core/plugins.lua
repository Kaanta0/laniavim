-- Dynamically load every plugin specification in `lua/plugins`
local function load_plugins()
  local specs = {}
  -- Determine absolute path to the plugins directory relative to this file
  local base = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h")
  local plugin_dir = base .. "/plugins"
  for _, file in ipairs(vim.fn.readdir(plugin_dir, function(name)
    return name:sub(-4) == ".lua"
  end)) do
    local module = "plugins." .. file:gsub("%.lua$", "")
    local ok, spec = pcall(require, module)
    if ok then
      if type(spec) == "table" then
        if vim.tbl_islist(spec) then
          vim.list_extend(specs, spec)
        else
          table.insert(specs, spec)
        end
      else
        vim.notify("Plugin spec for " .. module .. " was not a table", vim.log.levels.WARN)
      end
    else
      vim.notify("Failed to load plugin: " .. module .. "\n" .. spec, vim.log.levels.ERROR)
    end
  end
  return specs
end

require("lazy").setup(load_plugins())

-- Set default colourscheme once plugins are ready. `pcall` prevents
-- startup failures on the first run before the scheme is installed.
pcall(vim.cmd, "colorscheme cyberdream")
