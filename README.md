# rstudio server ansible playbook
An Ansible Playbook to deploy RStudio Server based on the work "yutannihilation"
at https://github.com/yutannihilation/ansible-playbook-r

It also uses geerlingguy.firewall role to setup minimal firewall rules
to the server.

For a personal use
```sh
$ sudo apt-get install git ansible
$ git clone https://eng-git.canterbury.ac.nz/RCC/rstudio-servers-teaching.git
$ ansible-playbook deploy-rstudio-server.yml
```

R is installed from the rstudio repo.
Adjustments to
 * packages from the system
 * packages from cran
 * packages from github
 * users accessing the system (assuming AD)
 * local users in case AD is not used

can be made in appropriate files in `hosts_vars` for
each individual rstudio deployement as is appropriate.
By default the notebook acts on the localhost.

Additionnally the following can be enabled from `host_vars`
 * A Dropbox setup script can be installed
 * Links to Pdrive can be setup automatically (UC only)
 
Two additional playbooks are provided to adjust the deployment
after the initial setup
 * updateAuthorisedUsers.yml to update the users allowed
 * UpdatePackages.yml to alter the list of installed packages
