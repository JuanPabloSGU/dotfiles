local barbar_setup, barbar = pcall(require, "barbar")
if not barbar_setup then
	return
end

barbar.setup()
