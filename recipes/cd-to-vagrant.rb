execute "cd to /vagrant on login" do
  command "echo 'cd /vagrant' >> /home/vagrant/.bash_profile"
  not_if "cat /home/vagrant/.bash_profile | grep 'cd /vagrant'"
end