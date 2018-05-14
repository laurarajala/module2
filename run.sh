sudo -s
echo "Changed to root..."

wget -q -O- http://downloads.opennebula.org/repo/Ubuntu/repo.key | apt-key add&lt;strong&gt; -&lt;/s$
echo "downloaded OpenNebula packages..."
echo "deb http://downloads.opennebula.org /repo/Ubuntu/12.04 stable opennebula" &gt; /etc/apt/source$

apt-get update
echo "apt-get update"
echo "Installing OpenNebula: opennebula -sunstone -node and bridge-utils"

'.highstate.sh'

apt-get install opennebula opennebula-sunstone opennebula-node bridge-utils

echo "ignoring config changes..."
echo "ignoring user/group/dynamic_ownership configs..."

su -ubuntu
echo "Changed back to user: ubuntu"


echo "Use the following ipaddr to check your new cloud in the form: <ip-address>:9869"
hostname -I

echo "Your username and password are as follows"
sudo cat /var/lib/one/.one/one_auth
