# SSH tunnel
# local port forwarding
ssh -L 9000:livescore.com:80 user@example.com
# forward my local port 9000 to port 5432 on the server(localhost)
#  -nNT flags, will cause SSH to not allocate a tty and only do the port forwarding.
ssh -L 9000:localhost:3306 user@example.com:

# Remote port forwarding
# SSH doesn’t by default allow remote hosts to forwarded ports. 
# open /etc/ssh/sshd_config and add the following line.

GatewayPorts yes
sudo vim /etc/ssh/sshd_config
sudo service ssh restart
ssh -R 9000:localhost:3000 user@example.com