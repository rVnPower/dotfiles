-- Standard awesome library
local awful = require("awful")

local _M = {}

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function _M.get ()
  -- Table of layouts to cover with awful.layout.inc, order matters.
  local layouts = {
    awful.layout.suit.tile,               -- 2:
    awful.layout.suit.floating,           -- 1:
    awful.layout.suit.spiral,             -- 8:
--  awful.layout.suit.corner.ne,
--  awful.layout.suit.corner.sw,
--  awful.layout.suit.corner.se,
  }

  return layouts
end

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

return setmetatable(
  {}, 
  { __call = function(_, ...) return _M.get(...) end }
)
