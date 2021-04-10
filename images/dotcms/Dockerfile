FROM dotcms/dotcms:latest
USER root


RUN touch /srv/sane

# Make groups for access to specific directories
RUN addgroup cmsdata && chgrp --recursive cmsdata /data
RUN addgroup cmssrv && chgrp --recursive cmssrv /srv


USER 1000000000
ENTRYPOINT ["/sbin/tini", "--", "/srv/entrypoint.sh"]
CMD ["dotcms"]
