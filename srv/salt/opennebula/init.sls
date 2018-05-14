sudo -s
wget -q -O- http://downloads.opennebula.org/repo/Ubuntu/repo.key | apt-key add&lt;strong&gt; -&lt;/strong&gt;
echo "deb http://downloads.opennebula.org /repo/Ubuntu/12.04 stable opennebula" &gt; /etc/apt/sources.list.d /opennebula.list
