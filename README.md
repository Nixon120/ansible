# rstudio server ansible playbook
An Ansible Playbook to deploy RStudio Server based on the work "yutannihilation"
at https://github.com/yutannihilation/ansible-playbook-r

It also uses the uchida.miniconda role to manage R and some dependencies
through conda.

Finally it uses geerlingguy.firewall role to setup minimal firewall rules
to the server.

For a personal use
```sh
$ sudo apt-get install git ansible
$ git clone https://eng-git.canterbury.ac.nz/RCC/rstudio-servers-teaching.git
$ ansible-playbook deploy-rstudio-server.yml
```

R is installed from conda and will use MKL.
Adjustments to
 * packages from the system
 * additional conda channels
 * packages from conda
 * packages from cran not available through conda
 * users accessing the system (assuming AD)
 * local users in case AD is not used

can be made in appropriate files in `hosts_vars` for
each individual rstudio deployement as is appropriate.
By default the notebook acts on the localhost.
