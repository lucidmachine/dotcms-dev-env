FROM lucidmachine/devutils:latest
ARG username=developer

USER root

# Create mount points
RUN mkdir /data /data/dbdata /data/esdata /data/cmsdata /data/cmssrv
RUN chown --recursive ${username}:${username} /data

USER ${username}
WORKDIR /home/${username}
CMD ["/bin/zsh"]
