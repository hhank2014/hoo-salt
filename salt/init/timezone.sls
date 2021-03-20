Asia/Shanghai:
  timezone.system

ntp:
  pkg.installed

ntpd:
  service.running:
    - name: ntpd
    - enable: True
    - reload: True
