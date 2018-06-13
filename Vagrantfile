# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 2.1.0"

$msg = <<MSG
------------------------------------------------------
Elephant Eleanor, accessible at http://192.168.33.10

Wordpress:
 - wordpress url  - http://junglewp.local/
 - directory      - var/www/public
 - login          - admin
 - Password       - password
 ------------------------------------------------------
 Database:
 - Database       - junglewp
 - Username       - root
 - Password       - root
 - Host           - localhost

------------------------------------------------------

Thank you for using JungleWP.com vagrant Eleanor Elephant.
We built this vagrant box with a lot of caffeine ❤, If you like our work, please shout-out
a word on Twitter @jungle_wp #wordpress #saveelephants. Remember, we love you! \xf0\x9f\x98\x9c

MSG



Vagrant.configure("2") do |config|
config.vm.post_up_message = $msg

    config.vm.box = "junglewp/eleanor-elephant"
    config.vm.box_version = "1.0"
    config.vm.provision :shell, path: "bootstrap.sh"

    config.vm.hostname = "junglewp.local"

    config.vm.network "forwarded_port", guest: 80, host: 8080

    config.vm.network "private_network", ip: "192.168.33.10"

    config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]


    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

end

           
