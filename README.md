Treasure環境
===================================

# Install
```
$ git clone git@github.com:hironomiu/VagrantTreasure2015.git
or
$ git clone https://github.com/hironomiu/VagrantTreasure2015.git 
```
# Start UP

```
$ cd VagrantTreasure2015  
$ vagrant up
```

# Login
## demouser
```
$ ssh demouser@192.168.56.230
```
## vagrant
```
$ vagrant ssh
```
# Users

| OS user | pass | 接続DB | 接続Port |  DB user |  DB pass | 用途 |
|:-----------:|:------------:|:------------:|:------------:|:------------:|:------------:|:------------:|
| root | - | - | 3306 |  root | vagrant | root vagrantユーザより sudo su -にて遷移|
| vagrant | - | - | - | - | - | vagrant用ユーザ vagrant sshにてログイン|
| demouser | demouser | demouser | 3306 | demouser | demouser | 開発ユーザ |
| group-a | group-a | group_a | 3306 | group_a | group_a | 開発ユーザ |
| group-b | group-b | group_b | 3306 | group_b | group_b | 開発ユーザ |
| group-c | group-c | group_c | 3306 | group_c | group_c | 開発ユーザ |
| group-d | group-d | group_d | 3306 | group_d | group_d | 開発ユーザ |
| group-e | group-e | group_e | 3306 | group_e | group_e | 開発ユーザ |

## Packages   
### MySQL
- 5.6
- 自動起動
```
/etc/my.cnf
```
 
### iptables
- 自動起動
- port22,80 allow

### httpd
- 自動起動
- DocumentRootは適時設定すること

### PHP
- 5.6
