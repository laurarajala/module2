#!bin/bash/

sudo -s
echo "Changed to root..."

echo "downloading OpenNebula packages..."
echo "apt-get update"
echo "Installing OpenNebula: opennebula -sunstone -node and bridge-utils"

'./highstate.sh'

echo "ignoring config changes..."
echo "ignoring user/group/dynamic_ownership configs..."

su - ubuntu
echo "Changed back to user: ubuntu"


echo "Use the following ipaddr to check your new cloud in the form: <ip-address>:9869"
hostname -I

echo "Your username and password are as follows"
sudo cat /var/lib/one/.one/one_auth
