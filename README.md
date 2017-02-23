[bcc-docker-fedora](https://hub.docker.com/r/a0viedo/bcc-fedora/) takes the work from [bcc-docker](https://github.com/zlim/bcc-docker) to make [bcc](https://github.com/iovisor/bcc) work in Fedora distributions.

From your host shell:
```bash
docker run -it --rm \
  --privileged \
  -v /lib/modules:/lib/modules:ro \
  -v /usr/src:/usr/src:ro \
  -v /etc/localtime:/etc/localtime:ro \
  --workdir /usr/share/bcc/tools \
  a0viedo/bcc-fedora
```
