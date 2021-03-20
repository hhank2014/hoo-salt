repo:
  file.managed:
    - source: salt://services/mysql/files/mysql.repo
    - name: /etc/yum.repos.d/mysql.repo

mysql_install:
  pkg.installed:
    - pkgs:
      - mysql-community-client
      - mysql-community-devel
      - mysql-community-libs
      - mysql-community-server
