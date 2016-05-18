curl -L https://www.opscode.com/chef/install.sh | bash
cd /root/chef-repo/apartment_chef_solo
chef-solo -c solo.rb -j run_list.json
