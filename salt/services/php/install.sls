repo:
  cmd.run:
    - name: yum install epel-release yum-utils -y
remi-release-7.rpm:
  file.managed:
    - source: salt://services/php/files/remi-release-7.rpm
    - name: /usr/local/src/remi-release-7.rpm
  cmd.run:
    - name: yum localinstall -y /usr/local/src/remi-release-7.rpm
    - unless: test -f /etc/yum.repos.d/remi.repo

php_install:
  cmd.run:
    - name: yum-config-manager --enable remi-php74
  pkg.installed:
    - pkgs:
      - php
      - php-fpm
      - php-devel
      - php-common 
      - php-embedded
      - php-opcache 
      - php-cli 
      - php-gd 
      - php-gmp
      - php-mbstring
      - php-mysqlnd
      - php-pecl-mcrypt
      - php-pecl-redis5
