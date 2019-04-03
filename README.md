
wget https://packages.chef.io/files/stable/chefdk/3.8.14/ubuntu/18.04/chefdk_3.8.14-1_amd64.deb
sudo dpkg -i chefdk_3.8.14-1_amd64.deb
chef --version
which chef-client
sudo chef-client --local-mode default.rb 
sudo chef-client -z --runlist 'recipe[chef-workstation::default]'
sudo chef-client -z --runlist 'recipe[chef-workstation::hello-recipe]'

chef generate cookbook cookbooks/apache
chef generate recipe cookbooks/apache webserver
sudo chef-client -z --runlist 'recipe[apache::webserver]'


ohai memory/total

# generate template
chef generate template  cookbooks/chef-workstation/ motd
chef generate template cookbooks/apache/ index.html
chef generate attribute  cookbooks/apache/ default
sudo chef-client -z --runlist 'recipe[apache]'



#template '/ect/haproxy/haproxy.cfg' do
#    source 'haproxy.cfg.erb'
#    variable (:ha_algorith => load_balancing)
#    notifies :restart, 'service[haproxy]'
#end

