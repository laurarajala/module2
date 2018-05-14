/etc/apt/sources.list.d/opennebula.list:
  file.managed:
    - source: salt://nebula/list.txt

opennebula1:
  cmd.run:
    - name: wget -qO - http://downloads.opennebula.org/repo/Ubuntu/repo.key

apt-key1:
  cmd.run:
    - name: sudo apt-key add -

opennebula2:
   cmd.run:
    - name: sudo apt-get update

programs:
  pkg.installed:
    - pkgs:
      - opennebula
      - opennebula-sunstone
      - opennebula-node
      - brigde-utils
