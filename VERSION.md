v0.0.1: Testing the Vagrant environment. Failure to access the newly created CentOS7 VM.

v0.0.2: Switching to another Vagrant VM for CentOS7.1. Machine works, proceeding with cloning and configuring second machine.

v1.0.0_BETA: 2 VM working on CentOS7.1, both are bridged and usable from vagrant.

v1.0.0 (stable): 2 VM working on CentOS7.1, both are bridged and usable from vagrant. Nagios is working on VM1. NRPE (plus aliases) is working on VM2, both are accessible via SSH.

v2.0.0 (stable): There are 5 VMs working on CentOS7.1, 4 are used for a chef-controlled cluster, led by "chef" vm. Vagrantfile is found in the Master branch. "chef" vm is configured for RSA credential access only. 

Project aim: Creating a simulated 2 server environment for Nagios and Tracking with NRPE.
