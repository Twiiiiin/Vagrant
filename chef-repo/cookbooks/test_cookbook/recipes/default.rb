#
# Cookbook Name:: test_cookbook
# Recipe:: default
#
# Copyright (c) 2016 Twin, All Rights Reserved.

#This cookbook aims to download and install Apache Maven (and deps) on chef nodes.

package 'java-1.7.0-openjdk'
package 'java-1.7.0-openjdk-devel'



# Download and untar Maven
exec "wget http://it.apache.contactlab.it/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz"
exec "tar xzvf apache-maven-3.3.9-bin.tar.gz && rm -f apache-maven-3.3.9-bin.tar.gz"

# Copies Maven in opt and adds it to PATH
exec "cp -rp apache-maven-3.3.9 /opt/apache-maven-3.3.9"
exec "export PATH=/opt/apache-maven-3.3.9/bin:$PATH"