cd /root/chef-repo/apartment_chef_solo/
chef-solo -c solo.rb -o recipe[npm::to_prod_patch]
