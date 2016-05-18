cd /root/chef-repo/apartment_chef_solo
rm -rf cookbooks roles environments > /dev/null 2>&1
git clone https://github.com/apollo-3/apartment_vagrant.git
mv apartment_vagrant/cookbooks ./
mv apartment_vagrant/roles ./
mv apartment_vagrant/environments ./
rm -rf apartment_vagrant
curl -L https://www.opscode.com/chef/install.sh | bash
cd /root/chef-repo/apartment_chef_solo
chef-solo -c solo.rb -j run_list.json
