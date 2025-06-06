-- Pull in the wezterm API
local wezterm = require("wezterm")

wezterm.log_info("WezTerm configuration loaded.")

-- Define a mapping from directories to background images or colors
local default_background = "/Users/brett/.config/term/colorful-sunset-minimal-4k-0q.jpg"
local dir_backgrounds = {
	["/Users/brett/projects"] = { image = "/Users/brett/.config/term/anime-train-wallpaper.png" },
	["/Users/brett/.config/"] = {
		image = "/Users/brett/.config/term/minimalism-gears-wallpaper-f2e132a09db6be0b0a28823520d85912.jpg",
	},
}

-- Function to set background based on the current directory
local function set_background(window, pane, message)
	local cwd = message.args[1] -- Extract the directory from the escape sequence
	wezterm.log_info("Received directory change to: " .. cwd)

	-- Iterate through the directory mappings to find a match
	for dir, bg in pairs(dir_backgrounds) do
		if cwd:sub(1, #dir) == dir then
			wezterm.log_info("Match found for directory: " .. dir)
			if bg.image then
				wezterm.log_info("Setting background image to: " .. bg.image)
				window:set_background_image(bg.image)
			elseif bg.color then
				wezterm.log_info("Setting background color to: " .. bg.color)
				window:set_background_color(bg.color)
			end
			return
		end
	end

	-- If no match is found, set a default background
	wezterm.log_info("No matching directory found. Setting to default.")
	window:set_background_image(default_background)
	-- Alternatively, set a default color:
	-- window:set_background_color("#1d1f21")
end
-- Listen for the custom OSC 1337 escape sequence
wezterm.on("user-var-changed", function(window, pane, event, value)
	wezterm.log_info("Received user-var-changed event.", event, value)
	if event.key == "CurrentDir" then
		wezterm.log_info("Received user-var-changed event for CurrentDir.")
		set_background(window, pane, event)
	end
end)

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Theme
config.font = wezterm.font({
	family = "FiraCode Nerd Font Mono",
})
config.color_scheme = "Japanesque"
config.background = {
	{
		source = {
			File = "/Users/brett/.config/term/colorful-sunset-minimal-4k-0q.jpg",
		},
		horizontal_align = "Center",
		vertical_align = "Middle",
		height = "Cover",
		width = "Cover",
		opacity = 0.8,
		hsb = {
			brightness = 0.05,
			saturation = 0.3,
		},
	},
}
config.macos_window_background_blur = 40

-- Tab bar
config.hide_tab_bar_if_only_one_tab = true

-- Windows and panes
config.inactive_pane_hsb = {
	brightness = 0.8,
	saturation = 0.9,
}

-- and finally, return the configuration to wezterm
return config
