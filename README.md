percona
=======

Install and configure Percona server

Role Variables
--------------

```yaml
percona_root_password: YOUR_PERCONA_SERVER_ROOT_PASSWORD
```

Dependencies
------------

- evannook.sysbase

Example Playbook
----------------

```yaml
  roles:
    - role: evannook.percona
      percona_root_password: YOUR_PERCONA_SERVER_ROOT_PASSWORD
```

License
-------

MIT

Author Information
------------------

Evan Nook
