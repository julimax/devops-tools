# Install aws vault

	wget https://github.com/99designs/aws-vault/releases/latest/download/aws-vault-linux-amd64
	chmod +x aws-vault-linux-amd64
	sudo mv aws-vault-linux-amd64 /usr/local/bin/aws-vault
	aws-vault --version


# Execute a command (using temporary credentials)

	aws-vault exec jonsmith -- aws s3 ls
	bucket_1
	bucket_2

# open a browser window and login to the AWS Console

	aws-vault login jonsmith

# List credentials

	aws-vault list
	Profile                  Credentials              Sessions
	=======                  ===========              ========
	jonsmith                 jonsmith                 -

# Start a subshell with temporary credentials
	
	aws-vault exec jonsmith
	Starting subshell /bin/zsh, use `exit` to exit the subshell
	aws s3 ls
	bucket_1
	bucket_2
