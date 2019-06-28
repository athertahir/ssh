# Use a passphrase
# this is the password to unlock the key itself.
# if private key is stolen it can't be used directly
ssh-keygen -t rsa

# sending public to remote server
ssh-copy-id user@example.com

# sending public to remote server
scp /home/ather/.ssh/id_rsa.pub user@example.com
mkdir .ssh
cat id_rsa.pub > ~/.ssh/authorized_keys 

# sending public to remote server
cat ~/.ssh/id_rsa.pub | ssh USER@HOST "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"

# sending public to remote server
nano .ssh/authorized_keys
