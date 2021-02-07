# Vagrant + AWS EC2 HTTP Proxy Server

Quickly spin up a HTTP proxy server in São Paulo using Vagrant and EC2.

## Prerequisites
 - AWS account
 - Install Vagrant and the aws provider plugin (https://github.com/mitchellh/vagrant-aws)

## Instructions
 - Create a security group in the São Paulo region named "HTTPProxyServer".
 - Configure "HTTPProxyServer" to allow SSH on port 22 and TCP on port 8888.
 - Set the following variables on your local environment:
   - AWS_ACCESS_KEY_ID
   - AWS_SECRET_ACCESS_KEY
   - AWS_KEYPAIR_NAME
   - AWS_PRIVATE_KEY_PATH
 - Run `vagrant up` on your terminal.
 - Proxy server should be up on the newly created EC2 instance on port 8888.
 - Run `vagrant destroy` to terminate the EC2 instance.
