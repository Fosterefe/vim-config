--[[
local config = {
	cmd = {
		--
		"java", -- Or the absolute path '/path/to/java11_or_newer/bin/java'
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xms1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		--
		"-jar",
		"/home/alexborja/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.500.v20230717-2134.jar",
		--"/path/to/jdtls_install_location/plugins/org.eclipse.equinox.launcher_VERSION_NUMBER.jar",
		--"-configuration", "/path/to/jdtls_install_location/config_SYSTEM",
		"-configuration", "/home/alexborja/.local/share/nvim/mason/packages/jdtls",
		-- "-data", "/Users/YOUR_MACHINE_NAME/local/share/nvim/java"
		"-data", "/home/alexborja/Documents/cs-p/proga/23-24-prg1/entregas/borjaAlex/reto-001",
	},
	settings = {
		java = {
			signatureHelp = { enabled = true },
			import = { enabled = true },
			rename = { enabled = true }
		}
	},
	init_options = {
		bundles = {}
	}
}

require('jdtls').start_or_attach(config)

--]]
