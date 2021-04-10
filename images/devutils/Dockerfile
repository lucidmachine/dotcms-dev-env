FROM lucidmachine/devutils:latest
ARG username=developer
USER root


# Create mount points
RUN mkdir -p /volumes/dbdata /volumes/esdata /volumes/cmsdata /volumes/cmssrv
RUN chown --recursive ${username}:${username} /volumes

# Add user to directory access groups
RUN groupadd cmsdata
RUN groupadd cmssrv
RUN usermod --append --groups cmsdata,cmssrv ${username}


USER ${username}
WORKDIR /home/${username}
CMD ["/bin/zsh"]
