puppet-update-manager
=====================

Release updates file management for puppet

Usage
-----
```puppet
include update_manager
```
or
```puppet
class { 'update_manager': }
```

Parameters
----------

There are two parameters to the `update_manager` class: `$ensure` and `$prompt`.

* `$ensure` can be one of `present` and `absent`
* `$prompt` can be one of `lts`, `never` and `normal`

Example
-------

```puppet
class { 'update_manager':
    ensure => present,
    prompt => 'lts',
}
```
