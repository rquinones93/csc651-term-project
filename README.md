# csc651-term-project

Chef Cookbooks for CSC651 Chef Project

## Introduction

This project is for SFSU's CSC-651 ( System Administration ) Spring 2019. We plan to use Chef, a configuration management tool, and InSpec, a testing framework made by Chef software, to automate the configuration of an Ubuntu Server ran in a Virtual Machine.

This README will help guide you through the setup process, and allow you to run and test the project on your local machine.

## Part 1 - Download Ubuntu ISO and set up Virtual Machine

#### 1. Install VirtualBox

- [Downloads - Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads)

#### 2. Download Ubuntu Server LTS Edition

- [Download Ubuntu Server - Ubuntu Website](https://www.ubuntu.com/download/server)

#### 3. Configure Ubuntu Server on Virtual Box

1. Open VirtualBox -> Select `New` in top left corner.
2. Set name to `UbuntuChef` and make sure Type is equal to `Linux` and Version is equal to `Ubuntu` (32/64-bit depending on your machine). Click Continue.
3. Set your Memory Size to `4096 MB`. Click Continue.
4. Select `Create a virtual hard disk now` and click Create. Select `VDI (VirtualBox Disk Image)` and click Continue. Select `Dynamically allocated` and click Continue.
5. Set your virtual hard disk size to `16.00GB` and click Create.
6. Right click on your new `UbuntuChef` Virtual Machine and select `Settings`. Under the `Network` tab select the `Attached to:` dropdown and change to `Bridged Adapter` and click Ok. (This will allow us to SSH into the VM).
7. Start the VirtualMachine. If prompted with a `Please select a virtual optical disk file` click on the folder icon and select where you've saved the `Ubuntu Server .iso file`. Click start. This will start the Ubuntu installation process.
8. Select your preffered language, hit Enter. Select Keyboard Type, hit Enter.
9. Select `Install Ubuntu`, hit Enter. Under the `Network Connections` screen, hit Enter.

## Part 2 - Installing Chef on the Virtual Machine & Local Machine

- Run these commands to update your Ubuntu VM, install `curl` and then install `Chef Workstation`

```bash
sudo apt-get update
sudo apt-get -y install curl
curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chef-workstation -c stable -v 0.2.41
```

- To install Chef on your own machine [Select Download for your OS](https://downloads.chef.io/chef/stable)
