# mbentley/squid

docker image for squid
based off of alpine:latest

To pull this image:
`docker pull mbentley/squid`

Example usage:

```
docker run -d --name squid -p 3128:3128 -v squid-logs:/var/log/squid squid
```
