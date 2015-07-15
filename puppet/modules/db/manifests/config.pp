class db::config {
    include variables::config
    $passwd = $variables::config::passwd
    include mysql::service
    Class['mysql::service'] -> Class['db::config']
    exec { "db-create-demouser":
        unless => "/usr/bin/mysql -utechtrain -ptechtrain -e \"show databases;\"",
        command => "/usr/bin/mysql -uroot -p$passwd -e \"create database demouser; grant all on demouser.* to demouser@localhost identified by 'demouser';create database group_a; grant all on group_a.* to group_a@localhost identified by 'group_a'; create database group_b; grant all on group_b.* to group_b@localhost identified by 'group_b'; create database group_c; grant all on group_c.* to group_c@localhost identified by 'group_c'; create database group_d; grant all on group_d.* to group_d@localhost identified by 'group_d'; create database group_e; grant all on group_e.* to group_e@localhost identified by 'group_e';\"",
    }
}
