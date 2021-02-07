require 'vagrant-aws'

# see https://github.com/mitchellh/vagrant-aws/issues/566
class Hash
  def slice(*keep_keys)
    h = {}
    keep_keys.each { |key| h[key] = fetch(key) if has_key?(key) }
    h
  end unless Hash.method_defined?(:slice)
  def except(*less_keys)
    slice(*keys - less_keys)
  end unless Hash.method_defined?(:except)
end

Vagrant.configure("2") do |config|
  config.vm.define "aws" # define provider
  config.vm.box = "aws"  # define box
  config.vm.synced_folder '.', '/vagrant', disabled: true

  config.vm.provider "aws" do |aws, override|
    aws.access_key_id = ENV['AWS_ACCESS_KEY_ID']
    aws.secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
    aws.keypair_name = ENV['AWS_KEYPAIR_NAME']
    aws.instance_type = "t2.nano"
    aws.region = "sa-east-1"
    aws.ami = "ami-0c3c87b7d583d618f"
    aws.security_groups = ["HTTPProxyServer"]
    override.ssh.username = "ubuntu"
    override.ssh.private_key_path = ENV['AWS_PRIVATE_KEY_PATH']
  end

  config.vm.provision :shell, path: "provision.sh"
end
