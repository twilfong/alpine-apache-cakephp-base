# alpine-apache-cakephp-base

Alpine-based docker image with Apache 2, PHP 8.1, Composer, and php extensions
needed for CakePHP 4.x projects. This image is meant to be used as a base for
single-site CakePHP apps.

The Apache `DocumentRoot` directive will be set to `/$CAKE_APP_DIR/webroot`.
The intention is for the Cake application to be mounted at `/$CAKE_APP_DIR` or
to use this image as a base and copy the app dir here.

Note: SSL support is installed but not configured.

## Environment variables for Apache and PHP config

| Variable     | Default | Description |
| :-------     | :------ | :---------- |
| SERVER_ADMIN | you@example.com | Admin email address |
| SERVER_NAME  | automatically determined | Main name and port that server uses |
| LOG_LEVEL    | warn | debug/info/notice/warn/error/crit/alert/emerg |
| CAKE_APP_DIR | cake_app | `DocumentRoot` set to `/$CAKE_APP_DIR/webroot` |
| PHP_MEMORY_LIMIT | 256M | |
