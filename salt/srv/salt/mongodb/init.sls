/srv-install/mongodb/install.sh:
  file.managed:
    - source: salt://mongodb/install.sh
    - mode: 700

  cmd.run:
    - cwd: /srv-install/mongodb/
    - unless: mongod --version | grep v2.4.6
    - require:
      - file.exists: /srv-install/mongodb/install.sh

/data/db:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - makedirs: true
    - recurse:
        - user
        - group
        - mode

/etc/mongodb.conf:
  file.managed:
    - source: salt://mongodb/mongodb.conf
    - user: root
    - group: root

/etc/init/mongodb.conf:
  file.managed:
    - source: salt://mongodb/upstart.conf
    - user: root
    - group: root

mongodb:
  service:
    - running
    - require:
      - file.exists: /etc/init/mongodb.conf
