# Create a password protected site for `nginx`

```
sudo sh -c "echo -n 'guest:' >> /etc/nginx/.htpasswd"
sudo sh -c "openssl passwd -apr1 >> /etc/nginx/.htpasswd"
```

File should look like this now:

```
cat /etc/nginx/.htpasswd
guest:$apr1$wI1/T0nB$jEKuTJHkTOOWkopnXqC1d1
```

Now configure `nginx` site:

```
server {
    listen 80 default_server;
    listen [::]:80 default_server ipv6only=on;

    root /usr/share/nginx/html;
    index index.html index.htm;

    server_name localhost;

    location / {
        try_files $uri $uri/ =404;

        ###################################################
        # The following two lines is all you need to add: #
        ###################################################
        auth_basic "Restricted Content";
        auth_basic_user_file /etc/nginx/.htpasswd;
    }
}
```
