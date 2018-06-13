# Eleanor-elephant
The simplest and fastest LAM/LEMP stack for WordPress local development. 

## What is Eleanor Elephant
This is a Vagrant box (we call it a Pod) designed to get you up and running in no time to start your WordPress plugins, themes, or websites development.

Elephant Eleanor comes with customizable options for setting your vagrant machine trough SSH like you would with your virtual servers. These options give you a lot of flexibility and control in tailoring your development environment

![Eleanor Elephant](https://media.giphy.com/media/ElvQFnLkTYxhe/giphy.gif "Eleanor")


## What’s Installed in Eleanor Elephant ?

* OS: Ubuntu-17.10!
* PHP: PHP 7.2!
* APACHE: 2.4.29
* NGINX: 1.13.8
* WP-CLI 1.5.1
* NODE via NVM: 8.9.4
* BUILD SCRIPTS
* Mysql 5.7
* Latest MongoDB
* Go lang 1.10
* OpenSSL latest version
* Latest Composer
* Latest Drush (Launcher)
* Higher versions of everything else that you're supposed to need to code wordpress

# GET STARTED
Getting started with Eleanor Elephant is a breeze. If you've probably already done some of these things just skip ahead.

1. Download and Install Vagrant
[https://www.vagrant.com](http://www.vagrantup.com/)
2. Download and Install VirtualBox
[https://www.virtualbox.org/](https://www.virtualbox.org/)
3. Download and install Vagrant-hostsupdater
```
$ vagrant plugin install vagrant-hostsupdater
```

### Enabling Virtualization in your PC BIOS (optional if already enabled)

While most recent PCs support hardware virtualization, not all computer vendors enable this feature as shipped from the factory. To turn this feature on, try these instructions:

1. Reboot your computer

2. Right when the computer is coming up from the black screen, press Delete, Esc, F1, F2, or F4. Each computer manufacturer uses a different key but it may show a brief message at boot telling you which one to press. If you miss it the first time, reboot and try again. It helps to tap the key about twice a second when the computer is coming up. If you are not able to enter the BIOS via this method, consult your computer’s manual.

3. In the BIOS settings, find the configuration items related to the CPU. These can be in under the headings Processor, Chipset, or Northbridge.

4. Enable virtualization; the setting may be called VT-x, AMD-V, SVM, or Vanderpool. Enable Intel VT-d or AMD IOMMU if the options are available.

5. Save your changes and reboot. 


### Important (windows users) !!!
Windows does not allow to change `hosts` files. Please add `junglewp.local 192.168.33.10` by yourself!
or run your command shell in administrator mode.

## Download Eleanor Elephant box

#### Just clone the repo and run vagrant up

```
git clone https://github.com/junglewp/eleanor-elephant project-folder

cd project-folder

vagrant up

```

#### Or download the .ZIP

1. Download the .ZIP
[.ZIP file](https://github.com/junglewp/eleanor-elephant/archive/master.zip)

2. Extract master.zip to your project folder

 ## Change into the new folder (directory) and run Eleanor Elephant.
  ```
  cd project-folder

  vagrant up

  ```

  ## Visit your vagrant

  Visit WordPress,on the Vagrant in your browser

  * Your wordpress site:
  [http://junglewp.local](http://junglewp.local)

  * The welcome page of your vagrant environment:
  [http://junglewp.local/welcome](http://junglewp.local/welcome)

  ## Access your database

  Eleanor Elephant comes bundled with Adminer, a lightweight alternative to phpMyAdmin that runs as a single PHP file to manage your wordpress database. Just as with phpMyAdmin, one installation of Adminer can manage MySQL for all of the server.

[http://junglewp.local/welcome](http://junglewp.local/welcome/)



# Environments

## WordPress
This tool installs a WordPress environment with these settings by default.

Default admin user:

* Username: admin
* Password: password

Normal test user:

* Username: eleanor
* Password: password

## MySQL
* MySQL Host: 127.0.0.1
* Username: root
* Password: root
* Port: 3306
* Database: junglewp

## SSH
* Host: junglewp.local or 192.168.33.10
* Username: vagrant
* Password: vagrant
* Port: 2222
* You can login virtual machine with

``` vagrant ssh ```

# UPDATING Eleanor Elephant
Although not necessary, if you want to check for updates, just type:                      

``` vagrant box outdated ```
                   
It will tell you if you are running the latest version or not of the bpod. If it says you aren't, simply run:
                           
``` vagrant box update ```
                            
# BASIC VAGRANT COMMANDS


## PAUSE YOUR SERVER

You should do this before shutting down your computer.
                                        
```vagrant suspend```

                                        
## RESUME YOUR SERVER
                                            
``` vagrant up ```
                                       

## DELETE YOUR SERVER
                                                
``` vagrant destroy ```
                                           

## SSH INTO YOUR SERVER
                                                    
``` vagrant ssh ```


                        
Follow us on GitHub and Twitter for the latest updates to Eleanor Elephant [@jungle_wp](https://twitter.com/jungle_wp).

![JungleWP Limited](https://junglewp-60af.kxcdn.com/wp-content/uploads/2017/10/logo.png "junglewp.com")




