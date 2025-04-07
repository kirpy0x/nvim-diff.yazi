--- @since 25.2.7

-- local function ()
-- 	local selected = Yazi.selected()[1] -- Get the first selected file
-- 	local highlighted = Yazi.hovered() -- Get the currently hovered file
-- end

return {
	entry = function()
		-- Get the current selection and hovered file from Yazi's context
		local selected = Yazi.selected()[1] -- Get the first selected file
		local highlighted = Yazi.hovered() -- Get the currently hovered file

		-- Check if we have both files
		if not selected or not highlighted then
			Yazi.notify({
				title = "nvim-diff",
				content = "Please select a file and hover over another file",
				timeout = 3,
			})
			return
		end

		-- Convert to absolute paths
		local sel_path = tostring(selected:absolute())
		local hov_path = tostring(highlighted:absolute())

		-- Execute nvim -d with the two files
		Yazi.manager_emit("shell", {
			command = "nvim",
			args = { "-d", sel_path, hov_path },
			sync = false,
		})
	end,
}
