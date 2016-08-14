dpkg --get-selections | grep sshfs
sudo apt-get install sshfs
sshfs -o workaround=rename -o idmap=user $USER@$USER-3.desktop.amazon.com:/rhel5pdi/workplace/projects ~/workplace
