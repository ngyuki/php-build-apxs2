# Install

Install script.

```
$ mkdir -p ~/.phpenv/plugins/php-build/share/php-build/before-install.d/

$ wget https://raw.githubusercontent.com/ngyuki/php-build-apxs2/master/patch-apxs2.sh \
  -O ~/.phpenv/plugins/php-build/share/php-build/before-install.d/patch-apxs2.sh

$ chmod +x ~/.phpenv/plugins/php-build/share/php-build/before-install.d/patch-apxs2.sh
```

Fix definitions.

```
$ sed -i -e '/^install_package /iwith_apxs2 ""' -e '/^with_apxs2 /d' \
  ~/.phpenv/plugins/php-build/share/php-build/definitions/5.5.12
```

Or, fix `default_configure_options` (enable to any versions).

```
$ echo --with-apxs2 >> ~/.phpenv/plugins/php-build/share/php-build/default_configure_options
```

# phpenv-apache-version

See [garamon/phpenv-apache-version](https://github.com/garamon/phpenv-apache-version)
