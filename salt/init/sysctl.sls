sysctl:
  file.managed:
    - source: salt://init/files/sysctl.conf
    - name: /etc/sysctl.conf
    - user: root
    - group: root
    - mode: 755
