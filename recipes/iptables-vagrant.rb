execute "allow port 3000" do
  command "sudo iptables -I INPUT -p tcp --dport 3000 -j ACCEPT && iptables-save -c > /etc/sysconfig/iptables"
  not_if "sudo iptables -L -n | grep dpt:3000"
end