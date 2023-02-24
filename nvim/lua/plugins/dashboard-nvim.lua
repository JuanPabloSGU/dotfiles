local setup, dashboard = pcall(require, "dashboard")
if not setup then
	return
end

dashboard.setup({
	theme = "hyper",
	config = {
		header = {
			"",
			" /$$                 /$$                                                                                   /$$      ",
			"| $$                | $$                                                                                  | $$      ",
			"| $$$$$$$   /$$$$$$ | $$$$$$$   /$$$$$$         /$$$$$$   /$$$$$$  /$$$$$$$   /$$$$$$  /$$   /$$  /$$$$$$$| $$$$$$$ ",
			"| $$__  $$ |____  $$| $$__  $$ |____  $$       /$$__  $$ |____  $$| $$__  $$ /$$__  $$| $$  | $$ /$$_____/| $$__  $$",
			"| $$  \\ $$  /$$$$$$$| $$  \\ $$  /$$$$$$$      | $$  \\ $$  /$$$$$$$| $$  \\ $$| $$  \\ $$| $$  | $$|  $$$$$$ | $$  \\ $$",
			"| $$  | $$ /$$__  $$| $$  | $$ /$$__  $$      | $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$  | $$ \\____  $$| $$  | $$",
			"| $$$$$$$/|  $$$$$$$| $$$$$$$/|  $$$$$$$      |  $$$$$$$|  $$$$$$$| $$  | $$|  $$$$$$/|  $$$$$$/ /$$$$$$$/| $$  | $$",
			"|_______/  \\_______/|_______/  \\_______/       \\____  $$ \\_______/|__/  |__/ \\______/  \\______/ |_______/ |__/  |__/",
			"                                               /$$  \\ $$                                                            ",
			"                                              |  $$$$$$/                                                            ",
			"                                                 \\______/                                                               ",
			"",
		},
		shortcut = {
			{
				desc = "Files",
				group = "Label",
				action = "Telescope find_files",
				key = "f",
			},
			{
				desc = "Tree",
				group = "Label",
				action = "NvimTreeOpen",
				key = "n",
			},
			{
				desc = "Mason",
				group = "Label",
				action = "Mason",
				key = "m",
			},
			{
				desc = "Terminal",
				group = "Label",
				action = "FloatermNew",
				key = "t",
			},
		},
		footer = {
			"",
			"Not the sharpest tool in the shed!",
			"",
		},
	},
})
