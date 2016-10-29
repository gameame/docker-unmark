# docker-unmark
Docker container for [Unmark](https://github.com/plainmade/unmark).

## Install 

1.  Install [Docker Compose](https://docs.docker.com/compose/)
2.  Run `git clone --recursive https://github.com/gameame/docker-unmark`
3.  Run `cd docker-unmark && docker-compose up`
4.  Go to `http://localhost:5001/setup` to finish setup

### Production deployment

If you run Unmark container behing Nginx, be sure to set Host header, otherwise
registration/login won't work:

```
server {
  # ...
  location / {
    proxy_pass http://localhost:5001;
    proxy_set_header Host      $host;
  }
  # ...
}
```
