FROM dotcms/dotcms:latest
USER root


# Create a dotcms user
RUN adduser --system dotcms

# Make groups for access to specific directories
RUN addgroup cmsdata && chgrp --recursive cmsdata /data
RUN addgroup cmssrv && chgrp --recursive cmssrv /srv
RUN addgroup dotcms cmsdata
RUN addgroup dotcms cmssrv


USER dotcms
ENTRYPOINT ["/sbin/tini", "--", "/srv/entrypoint.sh"]
CMD ["dotcms"]
