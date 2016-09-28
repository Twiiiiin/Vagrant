#
# Cookbook Name:: init_server
# Recipe:: default
#
# Copyright (c) 2016 Twin, All Rights Reserved.

## Basic configuration for server, inserts minimal softwares needed for
## setting up and using a machine.

package 'epel-release'
package 'tree'
package 'htop'
package 'nmap'
package 'links'
package 'httpd'

