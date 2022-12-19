#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

nodejs_version=18
python_version="3.7"
python_major_version=3

# dependencies used by the app (must be on a single line)
pkg_dependencies="python3 python3-dev python3-venv python3-pip"

#=================================================
# PERSONAL HELPERS
#=================================================

# Install/Upgrade ESPHome in virtual environement
myynh_install_esphome () {
	# Create the virtual environment
	ynh_exec_as $app python3 -m venv "$final_path"

	# Run source in a 'sub shell'
	(
		# activate the virtual environment
		set +o nounset
		source "$final_path/bin/activate"
		set -o nounset

		# add pip
		ynh_exec_as $app "$final_path/bin/python3" -m ensurepip

		# install ESPHome
		ynh_exec_as $app "$final_path/bin/pip3" --cache-dir "$datadir/.cache" install --upgrade tornado esphome wheel
	)
}

# Install/Upgrade ESPHome Dashboard in virtual environement
myynh_install_esphomedashboard () {

	pushd $final_path
		ynh_exec_as $app $ynh_node_load_PATH $ynh_npm install --legacy-peer-deps

		chown -R $app: $final_path

		# install ESPHome Dashboard
		ynh_exec_as $app $ynh_node_load_PATH "$final_path/script/build"
		ynh_exec_as $app rm -rf "$final_path/esphome_dashboard"
		ynh_exec_as $app cp -r "$final_path/raw_package" "$final_path/esphome_dashboard"
		ynh_exec_as $app $ynh_node_load_PATH NODE_ENV=production $ynh_npm exec -- rollup -c
	popd
}

# Upgrade the virtual environment directory
myynh_upgrade_venv_directory () {
	ynh_exec_as $app python3 -m venv --upgrade "$final_path"
}

# Create directory only if not already exists (path in argument)
myynh_create_dir () {
	[ -z "$1" ] && ynh_die "No argument supplied"
	[ -d "$1" ] || mkdir -p "$1"
}
