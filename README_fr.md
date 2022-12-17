# Exemple d'app pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/esphome_dashboard.svg)](https://dash.yunohost.org/appci/app/esphome_dashboard) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/esphome_dashboard.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/esphome_dashboard.maintain.svg)
[![Installer ESPHome Dashboard app avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=esphome_dashboard)

*[Read this readme in English.](./README.md)*

> *Ce paquet vous permet d'installer rapidement et simplement un tableau de bord ESPHome sur un serveur YunoHost.
Si vous n'avez pas YunoHost, veuillez consulter le guide pour savoir comment l'installer.*

## Vue d'ensemble

...

### Features

- ...

**Version incluse :** 2022.12.17~ynh1

**Démo :** https://web.esphome.io/

## Captures d'écran

![Capture d'écran de ESPHome Dashboard](./doc/screenshots/dashboard_states.jpg)

## Avertissements / informations importantes

* Any known limitations, constrains or stuff not working, such as (but not limited to):
    * Ne utilise pas l'authentification unique ou l'intégration LDAP

## Documentations et ressources

* Site officiel de l'app : <https://web.esphome.io>
* Documentation officielle utilisateur : <https://esphome.io/guides/getting_started_hassio.html>
* Documentation officielle de l'admin : <https://esphome.io/guides/contributing.html#contributing-to-esphome>
* Dépôt de code officiel de l'app : <https://github.com/esphome/dashboard>
* Documentation YunoHost pour cette app : <https://github.com/chexxor/homeassistant_ynh>
* Signaler un bug : <https://github.com/chexxor/homeassistant_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/chexxor/homeassistant_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.

``` bash
sudo yunohost app install https://github.com/chexxor/homeassistant_ynh/tree/testing --debug
ou
sudo yunohost app upgrade esphome_dashboard -u https://github.com/chexxor/homeassistant_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** <https://yunohost.org/packaging_apps>
