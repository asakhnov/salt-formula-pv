===================
Platform Visibility
===================

Easy to use tool to provide platform visibility for OpenStack tenants.

Sample pillars
==============

Server deployments
------------------

Platform visibility tool installed from system package and run as a service.
OpenStack APIs need to be available from the node where this tool is running.

.. code-block:: yaml

    pv:
      server:
        enabled: true
        openstack:
          password: password
          auth_url: 'http://keystone.host:5000/v3'
          project_id: 0245ec337ce44cd49b71fb682b04d364
          member_role_id: 71475993625644dc9143d2636f13fae4
          heat_url: 'http://heat.host:8004/v1'
          user_id: 0a49015a639448fe870e72e316c87171
        grafana:
          host: grafana.host
          user: admin
          password: password

