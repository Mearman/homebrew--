cask "gpt4all" do
	version "2.4.6"
	sha256 "1f3dbc28ead31b562402d2786f77bb9cd85291a8be2dbf8c0fcb85d4d438410e"
	url "https://gpt4all.io/installers/gpt4all-installer-darwin.dmg"
	name "GPT4All"
	desc "gpt4all: an ecosystem of open-source chatbots trained on a massive collections of clean assistant data including code, stories and dialogue"
	homepage "https://gpt4all.io/"

	installer script: {
		executable: "#{staged_path}/gpt4all-installer-darwin.app/Contents/MacOS/gpt4all-installer-darwin",
		args:       [
			"--accept-licenses",
			"--default-answer",
			"--confirm-command",
			"--verbose",
			"install"
		]
	}

	uninstall trash: [
		"/Applications/GPT4All.app"
	]

	uninstall rmdir: [
		"#{ENV["HOME"]}/Library/Application Support/chatall/",
		"/Applications/gpt4all/"
	]
end