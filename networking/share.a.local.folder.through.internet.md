# Share a local folder through internet

Navigate to your desired folder and start a simple web server:

```shell
cd /home/you/some/folder/with/photos/for/example
python3 -m http.server
```

Expose your web server using `ngrok`:

```shell
ngrok http http://localhost:8000
```
