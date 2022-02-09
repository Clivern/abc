FROM scratch
COPY abc /usr/bin/abc
ENTRYPOINT ["/usr/bin/abc"]
