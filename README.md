
# ESPHome Dashboard

[![Integration level](https://dash.yunohost.org/integration/example.svg)](https://dash.yunohost.org/appci/app/example) ![Working status](https://ci-apps.yunohost.org/ci/badges/example.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/example.maintain.svg)
[![Install Example app with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=example)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install an ESPHome Dashboard quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

...

### Features

- ...


**Shipped version:** 2022.12.17~ynh1

**Demo:** https://demo.example.com

## Screenshots

![Screenshot of ESPHome Dashboard](./doc/screenshots/example.jpg)

## Disclaimers / important information

* Known limitations, constraints or stuff not working:
    * Does not use single-sign on or LDAP integration

## Documentation and resources

* Official app website: <https://web.esphome.io>
* Official user documentation: <https://esphome.io/guides/getting_started_hassio.html>
* Official admin documentation: <https://esphome.io/guides/contributing.html#contributing-to-esphome>
* Upstream app code repository: <https://github.com/esphome/dashboard>
* YunoHost documentation for this app: <https://github.com/chexxor/homeassistant_ynh>
* Report a bug: <https://github.com/chexxor/homeassistant_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/chexxor/homeassistant_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/chexxor/homeassistant_ynh/tree/testing --debug
or
sudo yunohost app upgrade example -u https://github.com/chexxor/homeassistant_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
