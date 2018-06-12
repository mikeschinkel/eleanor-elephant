# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 2.1.0"

show_logo = false
red="\033[38;5;9m"#124m"
green="\033[1;38;5;2m"#22m"
blue="\033[38;5;4m"#33m"
purple="\033[38;5;5m"#129m"
yellow="\033[38;5;3m"#136m"
yellow_underlined="\033[4;38;5;3m"#136m"
url=yellow_underlined

# whitelist when we show the logo, else it'll show on global Vagrant commands
if [ 'up', 'halt', 'resume', 'suspend', 'status', 'provision', 'reload' ].include? ARGV[0] then
  show_logo = true
end

if show_logo then

splash = <<-HEREDOC
#{yellow}------------------------------------------------------
#{green}Elephant Eleanor,accessible at #{url}http://192.168.33.10

Wordpress:
 - wordpress url  - #{green}http://junglewp.local/
 - directory      - #{green}var/www/public
 - login          - #{green}admin
 - Password       - #{green}password
 #{yellow}------------------------------------------------------
Database:
 - Database       - #{green}junglewp
 - Username       - #{green}root
 - Password       - #{green}root
 - Host           - #{green}localhost

           _                 
   ______/ \-.   _         _ __ _         _    _  
.-/     (    o\_//        / |..| \       / >--< \ 
 |  ___  \_/\---'         \/ || \/       \|  \ |/ 
 |_||  |_||                |_''_|         |_||_| 

#{yellow}------------------------------------------------------
HEREDOC

puts splash
end



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

           
