my.cnf:
  file.managed:
    - source: salt://services/mysql/files/my.cnf
    - name: /etc/my.cnf
    - backup: minion
    - template: jinja
    - watch_in:
      - service: mysql_service


mysql_service:
  service.running:
    - name: mysqld
    - enable: True
    - reload: True
