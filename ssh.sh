sudo apt install ssh-server
sudo service ssh start
service ssh status

# SFTP is encrypted and runs one port only (22)
sftp user@example.com
put image.png
bye

# SCP PSCP(for windows)
scp client_image.png user@example.com:
scp client_image.png user@example.com:/var/tmp
scp user@example.com:server_image.png .

# connect to remote client
ssh -vvv user@example.com
ssh -i ~/.ssh/id_rsa user@example.com

# save inside ~/.ssh/config 
Host example
	User ather
	Host example.com
	IdentityFile ~/.ssh/id_rsa
	
ssh example
	
	
	
	
	