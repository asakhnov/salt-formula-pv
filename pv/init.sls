{%- if pillar.pv is defined %}
include:
{%- if pillar.pv.server is defined %}
- pv.server
{%- endif %}
{%- endif %}
