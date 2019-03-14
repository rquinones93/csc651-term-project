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

- To install Chef on your own machine [Select Download for your OS](https://downloads.chef.io/chef/stable)
