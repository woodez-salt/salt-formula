# salt-formula
Salt-master configs


vault:

- needs to be version 2 kv
-query:

[root@saltmaster01 master.d]# salt-run sdb.get 'sdb://myvault/test/user1?desc'
test user

[root@saltmaster01 master.d]# salt-run sdb.get 'sdb://myvault/test/user1?password'
p4ssw0rd
