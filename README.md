# module2
Creating my own module using saltstack

a new file


	https://devops.profitbricks.com/tutorials/install-and-configure-owncloud-on-ubuntu-1604/

	https://devops.profitbricks.com/tutorials/install-and-configure-owncloud-on-ubuntu-1604/

	https://download.owncloud.org/download/repositories/stable/owncloud/

-----------------------------------------------------

## Opennebula

found in: https://www.supportsages.com/opennebula-iaas-cloud-installation-on-ubuntu/

worked fine installing so tried using saltstack for this

>> ignored network-config

	wget -q -O- http://downloads.opennebula.org/repo/Ubuntu/repo.key | apt-key add&lt;strong&gt; -&lt;/strong&gt;
	echo "deb http://downloads.opennebula.org /repo/Ubuntu/12.04 stable opennebula" &gt; /etc/apt/sources.list.d /opennebula.list

>> to make the OpenNebula packages seen/available

	apt-get update
	( apt-get install opennebula opennebula-sunstone opennebula-node bridge-utils )

>> ignored the config

>> ignored the user/group/dynamic_ownership configs

checked ip-address:
	hostname -I

>> tried accessing port 9869
	http://localhost:9869/login

default password is: oneadmin
default password is found in: /var/lib/one/.one/one_auth

and is randomly generated on every new installation

