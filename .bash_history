echo Hello World > hello.txt
cat hello.txt 
ls
ls -a
wget https://packages.chef.io/files/stable/chefdk/3.8.14/ubuntu/18.04/chefdk_3.8.14-1_amd64.deb
ls -a
dpkg -i chefdk_3.8.14-1_amd64.deb
sudo dpkg -i chefdk_3.8.14-1_amd64.deb
chef -v
cat hello.txt 
chef --version
ls
cat default.rb 
ls
which chef-client
sudo chef-client --local-mode default.rb 
ls
sudo chef-client --local-mode default.rb 
which cowsay
