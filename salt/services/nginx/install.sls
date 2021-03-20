dep_packages:
  pkg.installed:
    - pkgs:
      - openssl-devel
      - pcre-devel
repo:
  file.managed:
    - source: salt://services/nginx/files/nginx.repo
    - name: /etc/yum.repos.d/nginx.repo

nginx:
  pkg.installed

nginx.conf:
  file.managed:
    - source: salt://services/nginx/files/nginx.conf
    - name: /etc/nginx/nginx.conf
    - backup: minion
    - template: jinja
    - watch_in:
      - service: nginx_service

nginx_service:
  service.running:
    - name: nginx
    - enable: True
    - reload: True
