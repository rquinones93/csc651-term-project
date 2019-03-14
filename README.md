# csc651-term-project

Chef Cookbooks for CSC651 Chef Project

## Introduction

This project is for SFSU's CSC-651 ( System Administration ) Spring 2019. We plan to use Chef, a configuration management tool, and InSpec, a testing framework made by Chef software, to automate the configuration of an Ubuntu Server ran in a Virtual Machine.

This README will help guide you through the setup process, and allow you to run and test the project on your local machine.

## Part 1 - Download Ubuntu ISO and set up Virtual Machine

### 1. Install VirtualBox

- [Downloads - Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### 2. Download Ubuntu Server LTS Edition

- [Download Ubuntu Server - Ubuntu Website](https://www.ubuntu.com/download/server)

### 3. Configure Ubuntu Server on Virtual Box

- This README assumes that you are able to provision a new Virtual Machine using VirtualBox, and are able to SSH into that newly provisioned Virtual Machine.

## Part 2 - Installing Chef on the Virtual Machine & Local Machine

- Run these commands to update your Ubuntu VM, install `curl` and then install `Chef Workstation`

```bash
sudo apt-get update
sudo apt-get -y install curl
curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chef-workstation -c stable -v 0.2.41
```

- To install Chef Workstation on your own machine [Select Chef Workstation Download for your OS](https://downloads.chef.io/chef-workstation/0.2.48)

## Part 3 - Configuring the Ubuntu Server with Chef & Testing

- `Important`: Make sure the Ubuntu Server VM is running, and you have SSH access to the VM.
- `Important`: Also make sure `chef-run` and `inspec` are installed on your local machine.
  
### Glossary

- `USERNAME` - Username for user you want to run Chef as
- `USERPASSWORD` - Password for user we want to run Chef as
- `VMsudoPASSWORD` - The password needed on the VM to invoke `sudo`
- `VMsIP` - The IP address given to the Ubuntu Server VM
- `SSHPORT` - The port used for SSH on the VM( in case port forwarding is used )

### Converging Cookbooks onto the Server

```bash
# Apply the configuration cookbook to the server
chef-run USERNAME@VMsIP:SSHPORT --password USERPASSWORD --sudo-password VMsudoPASSWORD configuration

# Apply the reset cookbook to the server, removing anything set by the configuration cookbook
chef-run USERNAME@VMsIP:SSHPORT --password USERPASSWORD --sudo-password VMsudoPASSWORD reset

# Example from my local machine
chef-run cheftest@127.0.0.1:2222 --password cheftest --sudo-password cheftest configuration
```

### Running InSpec Tests against Server (Make sure you're in repository's root directory)

```bash
# Run our own InSpec Profile
inspec exec configuration-tests -t ssh://USERNAME:PASSWORD@IPtoSSHintoVM:PORT

# Run DevSec Linux Baseline InSpec Profile
inspec exec https://github.com/dev-sec/linux-baseline -t ssh://USERNAME:USERPASSWORD@VMsIP:SSHPORT

# Example from my local machine
inspec exec configuration-tests -t ssh://cheftest:cheftest@127.0.0.1:2222
```