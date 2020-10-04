### spring 1

mysql:

```
docker run --name spring-mysql -e MYSQL_ROOT_PASSWORD=password1234 -p 3306:3306 -d mysql:5.7

```


phpmyadmin

```
docker run --name spring-phpmyadmin -d --link spring-mysql:db -p 8081:80 phpmyadmin/phpmyadmin

```
