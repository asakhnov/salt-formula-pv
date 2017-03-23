{%- from "pv/map.jinja" import server with context %}

pv_package:
  pkg.installed:
    - name: {{ server.pkgs }}

/etc/platformvisibility/platformvisibility.conf:
  file.managed:
  - source: salt://pv/files/platformvisibility.conf
  - user: heat-pooler
  - group: pv
  - mode: 640
  - template: jinja
  - require:
    - pkg: pv_package

pv_service:
  service.running:
  - name: {{ server.service }}
  - enable: True
  - watch:
    - file: /etc/platformvisibility/platformvisibility.conf
