/srv-install/nodejs/install.sh:
  file.managed:
    - source: salt://nodejs/install.sh
    - mode: 700

  cmd.run:
    - cwd: /srv-install/nodejs/
    - unless: node -v | grep v0.10.18
    - require:
      - file.exists: /srv-install/nodejs/install.sh