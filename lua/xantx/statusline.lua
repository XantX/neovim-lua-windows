function Status_line()
  local filePath = '%t'
  local modified = '%m'
  local helpTag = '%h'
  local readonly = '%r'
  local branch = ""
  local gus = ""
  if(vim.g.gitsigns_head ~= nil) then
    branch = "%{%v:lua.string.format('%s%s','  ',get(b:, 'gitsigns_head',''))%}"
    gus = " [%{get(b:, 'gitsigns_status', '')}]"
  end
  local space = " %="
  local rightSight = "%q %y [%l/%L]"
  return string.format(
    "%s%s%s%s%s%s%s%s",
    filePath,
    modified,
    helpTag,
    readonly,
    branch,
    gus,
    space,
    rightSight
  )
end

vim.o.statusline="%!luaeval('Status_line()')"
