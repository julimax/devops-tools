https://asdf-vm.com/

#Core Installation

	brew install coreutils curl git
	brew install asdf
	brew install gpg gawk

#Plugin Installation

	asdf plugin add terraform
	asdf plugin add awscli
	asdf plugin add terragrunt
	asdf plugin add aws-vault
	asdf plugin add packer
	asdf plugin-add kubectl 

#to get a list of all version available:

	asdf list-all <Plugin_Name>

#to install a specific version:

	asdf install <Plugin_Name> <Version>

#to see a list of version installed:

	asdf list

#install specific version

	asdf install terraform 1.1.7 (Analytics and Config)
	asdf install terraform 1.1.3 (Shopify and WAF)
	asdf install terraform 1.0.4 (Legacy)
	asdf install awscli latest
	asdf install terragrunt latest
	asdf install aws-vault latest
	asdf install packer latest
	asdf install kubectl latest

#to add a specific version on a directory (notice that a file .tool-versions is created, you can get the configuration by opening this file)

	asdf local terraform 1.1.7
#to add a specific version globally

	asdf global terraform 1.0.4
