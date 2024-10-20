#!/usr/bin/env bash
# vim: ft=bash:
#

####
# get_abs_path(filename)
#   Given a relative filename path return it in absolute form.
#   Could use `realpath` generally, but this tool may not be installed.
#
function get_abs_path() {
  local filename=$1
  local parentdir
  parentdir=$(dirname "${filename}")

  if [ -d "${filename}" ]; then
    echo "$(cd "${filename}" && pwd)"
  elif [ -d "${parentdir}" ]; then
    echo "$(cd "${parentdir}" && pwd)/$(basename "${filename}")"
  fi
}


# find-project-root startDir
#   Project root is defined as the first directory containing the `.git` repository at or above `startDir`
#
function find-project-root () {
  local startDir
  startDir="$(get_abs_path "$1")"
  local result=""

  if [ -d "${startDir}/.git" ]; then
    result="${startDir}"
  elif [ "/"  != "${startDir}" ]; then
    result=$(find-project-root "${startDir}/..")
  fi
  echo "${result}"
}



function load_mode_env() {
  local env_dir=${1:-${env_dir:=$(pwd)}}
  local mode=${2:-${mode:=development.local}}
  local fallback=${3:-false}

  if [ -f "${env_dir}/.env.${mode}" ]; then
    . "${env_dir}/.env.${mode}"
  elif [ -f "${env_dir}/.env" ] && $fallback; then
    . "${env_dir}/.env"
  fi
}
