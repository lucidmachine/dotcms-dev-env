# dotcms-dev-env

dotcms-dev-env is a development environment for dotCMS using docker-compose based on the dotCMS
example [Single Node with HA
Proxy](https://github.com/dotCMS/docker/tree/master/examples/03-single_node-haproxy).

dotcms-dev-env is NOT SAFE FOR PRODUCTION. Secrets are hard-coded in the configuration and
containers have not been hardened.

## Getting Started

### Installing and Starting the Application

```
make start
```

### Stopping the Application
```
make stop
```

### Cleaning Up Mounted Volumes
```
make clean
```
