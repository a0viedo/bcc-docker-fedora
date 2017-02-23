FROM fedora:latest
MAINTAINER Alejandro Oviedo <alejandro.oviedo.g@gmail.com>

COPY install-dependencies.sh /
COPY entrypoint.sh /
RUN chmod +x /install-dependencies.sh
RUN chmod +x /entrypoint.sh
RUN ./install-dependencies.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]