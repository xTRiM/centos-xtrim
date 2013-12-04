execute "add /usr/local/bin to PATH in bash_profile" do
  user 'vagrant'
  command "echo 'PATH=$PATH:/usr/local/bin' >> /home/vagrant/.bash_profile"
  not_if "cat /home/vagrant/.bash_profile | grep 'PATH=$PATH:/usr/local/bin'"
end

