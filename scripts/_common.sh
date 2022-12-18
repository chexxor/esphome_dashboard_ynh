#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
# PHP APP SPECIFIC
#=================================================
# Depending on its version, YunoHost uses different default PHP version:
## YunoHost version "11.X" => PHP 7.4
## YunoHost version "4.X"  => PHP 7.3
#
# This behaviour can be overridden by setting the YNH_PHP_VERSION variable
#YNH_PHP_VERSION=7.3
#YNH_PHP_VERSION=7.4
#YNH_PHP_VERSION=8.0
# For more information, see the PHP application helper: https://github.com/YunoHost/yunohost/blob/dev/helpers/php#L3-L6
# Or this app package depending on PHP: https://github.com/YunoHost-Apps/grav_ynh/blob/master/scripts/_common.sh
# PHP dependencies used by the app (must be on a single line)
#php_dependencies="php$YNH_PHP_VERSION-deb1 php$YNH_PHP_VERSION-deb2"
# or, if you do not need a custom YNH_PHP_VERSION:
# php_dependencies="php$YNH_DEFAULT_PHP_VERSION-deb1 php$YNH_DEFAULT_PHP_VERSION-deb2"

nodejs_version=18
py_app_version=3.11.1

# dependencies used by the app (must be on a single line)
pkg_dependencies="python3 python3-dev python3-venv python3-pip"

#=================================================
# PERSONAL HELPERS
#=================================================

# Install/Upgrade ESPHome in virtual environement
myynh_install_esphome () {
	# Create the virtual environment
	ynh_exec_as $app $py_app_version -m venv --without-pip "$final_path"

	# Run source in a 'sub shell'
	(
		# activate the virtual environment
		set +o nounset
		source "$final_path/bin/activate"
		set -o nounset

		# add pip
		ynh_exec_as $app "$final_path/bin/python3" -m ensurepip

		# install last version of wheel
		# ynh_exec_as $app "$final_path/bin/pip3" --cache-dir "$data_path/.cache" install --upgrade wheel

		# install ESPHome
		ynh_exec_as $app "$final_path/bin/pip3" --cache-dir "$data_path/.cache" install --upgrade tornado esphome
	)
}

# Install/Upgrade ESPHome Dashboard in virtual environement
myynh_install_esphomedashboard () {
	# Create the virtual environment
	ynh_exec_as $app $py_app_version -m venv --without-pip "$final_path"

	# Run source in a 'sub shell'
	(
		# activate the virtual environment
		set +o nounset
		source "$final_path/bin/activate"
		set -o nounset

		# add pip
		ynh_exec_as $app "$final_path/bin/python3" -m ensurepip

		# install last version of wheel
		# ynh_exec_as $app "$final_path/bin/pip3" --cache-dir "$data_path/.cache" install --upgrade wheel

		# install ESPHome
		ynh_exec_as $app "$final_path/script/build"
	)
}

# Upgrade the virtual environment directory
myynh_upgrade_venv_directory () {
	ynh_exec_as $app $py_app_version -m venv --upgrade "$final_path"
}

# Create directory only if not already exists (path in argument)
myynh_create_dir () {
	[ -z "$1" ] && ynh_die "No argument supplied"
	[ -d "$1" ] || mkdir -p "$1"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
