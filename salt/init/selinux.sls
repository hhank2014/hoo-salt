selinux:
  file.managed:
    - source: salt://init/files/selinux
    - name: /etc/selinux/config
    - user: root
    - group: root
    - mode: 644
