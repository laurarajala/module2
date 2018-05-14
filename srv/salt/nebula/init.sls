opennebula1:
  cmd.run:
    -name: wget -q -O- http://downloads.opennebula.org/repo/Ubuntu/repo.key | apt-key add&lt;strong&gt; -&lt;/strong&gt;

/etc/apt/sources.list.d/opennebula.list:
  file.managed:
    - source: salt://opennebula/opennebula.list

opennebula2:
   cmd.run:
    - name: apt-get update

programs:
  pkg.installed:
    - pkgs:
      - opennebula
      - opennebula-sunstone
      - opennebula-node
      - brigde-utils
