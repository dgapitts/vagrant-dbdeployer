## vagrant-dbdeployer 

Centos 7 VM Running dbdeployer 


## Basic Tests 

After running `vagrant up` (takes a while to download 600Mb mysql binary)

I can test basic setup

```
[root@dbdeploy-cent7 ~]# cd $HOME/sandboxes/msb_8_0_11
[root@dbdeploy-cent7 msb_8_0_11]# ./use
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.11 MySQL Community Server - GPL

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql [localhost:8011] {msandbox} ((none)) > select @@version, @@port;
+-----------+--------+
| @@version | @@port |
+-----------+--------+
| 8.0.11    |   8011 |
+-----------+--------+
1 row in set (0.02 sec)

mysql [localhost:8011] {msandbox} ((none)) >
```


I'm keen to try group replication next:

```
dbdeployer deploy --topology=group replication 8.0 --single-primary
http://www.dbdeployer.com/
```


