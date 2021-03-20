nginx_conf:
  file.recurse:
    - source: salt://services/nginx/conf.d
    - name: /etc/nginx/conf.d
    - clean: True
    - makedirs: True
    - backup: minion
    - watch_in:
      - service: nginx_service
