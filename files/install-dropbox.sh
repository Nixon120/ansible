#!/bin/bash
# set the tarball's name
DBOXTAR=/tmp/"${USER}"-dropbox.tar.gz
# download the tarball
wget -O "${DBOXTAR}" "https://www.dropbox.com/download?plat=lnx.x86_64"

# install in the home directory
tar -xf "${DBOXTAR}" -C "${HOME}"/

# Remove temporary tarball
rm "${DBOXTAR}"

# Inform user
echo "Basic installation is finished."
echo "Proceed with connecting and running instructions at"
echo "https://wiki.canterbury.ac.nz/display/RCC/Dropbox+on+jupyterhub+and+Rstudio-server+on+the+RCC"
