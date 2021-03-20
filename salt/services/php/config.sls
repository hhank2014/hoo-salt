/etc/php.ini:
  file.managed:
    - source: salt://services/php/files/php.ini
    - template: jinja
    - watch_in:
      - service: php-fpm_service

/etc/php-fpm.d/www.conf:
  file.managed:
    - source: salt://services/php/files/www.conf
    - template: jinja
    - watch_in:
      - service: php-fpm_service

/etc/php-fpm.conf:
  file.managed:
    - source: salt://services/php/files/php-fpm.conf
    - template: jinja
    - watch_in:
      - service: php-fpm_service

php-fpm_service:
  service.running:
    - name: php-fpm
    - enable: True
