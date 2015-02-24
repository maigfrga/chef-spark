chef-spark cookbook
======================

Installs/Configure Apache Spark

Requirements
------------

### Platform:

The following platform families are supported:

* Debian


### Cookbooks:

* defaults



Atrributes:
-----------

### default
- 'node['spark']['extra_pacakges']' by default [], You can use this attributre to install jdk or another pacakges.


- `node['spark']['installation_method']` - Initial support just for prebuilt packages

- `node['spark']['url']` - Package url, by default version
  1.2.1 prebuilt for hadoop 2.4 and later http://d3kbcqa49mib13.cloudfront.net/spark-1.2.1-bin-hadoop2.4.tgz

- `node['spark']['install_directory']` - by default /opt


Recipes
------------

- `default.rb` : this recipe reads node['spark']['installation_method']
  and execute proper installation recipe, also install extra packages.

- `install_prebuilt.rb`: Download and install prebuilt version


License and Author
==================

* Author:: Manuel Ignacio Franco (<manuel@notempo1320.com>

* License: Apache 2.0
