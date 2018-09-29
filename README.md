percona
=======

Install and configure Percona server

Role Variables
--------------

```yaml
percona_root_password: YOUR_PERCONA_SERVER_ROOT_PASSWORD
percona_bind_address: (default: ::1)
```

Dependencies
------------

- pylabs.sysbase

Example Playbook
----------------

```yaml
  roles:
    - role: pylabs.percona
  vars:
    percona_root_password: YOUR_PERCONA_SERVER_ROOT_PASSWORD
```

License
-------

MIT

Author Information
------------------

William Wu
