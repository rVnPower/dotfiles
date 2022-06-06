local filesystem = require("gears.filesystem")
local config_dir = filesystem.get_configuration_dir()

return {
	-- Default Applications
	default = {
		-- Default terminal emulator
		terminal = "alacritty",
		-- Defalut music client
		music_player = "alacritty --class music -e ncmpcpp",
		-- Default text editor
		text_editor = "alacritty -e nvim",
		-- Default code editor
		code_editor = "emacs",
		-- Default web browser
		web_browser = "brave",
		-- Default file manager
		file_manager = "thunar",
        -- App launcher
		app_launcher = "bash ~/.config/rofi/scripts/rofi-main.sh",
	},

	-- List of binaries/shell scripts that will execute for a certain task
	utils = {
		-- Fullscreen screenshot
		full_screenshot = utils_dir .. "screensht full",
		-- Area screenshot
		area_screenshot = utils_dir .. "screensht area",
		-- Color Picker
		color_picker = utils_dir .. "xcolor-pick",
	},
}
