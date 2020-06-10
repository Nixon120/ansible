# shellcheck shell=sh

# Expand $PATH
dropbox_bin_path="/opt/dropbox"

if [ -n "${PATH##*${dropbox_bin_path}}" -a -n "${PATH##*${dropbox_bin_path}:*}" ]; then
    export PATH=$PATH:${dropbox_bin_path}
fi
