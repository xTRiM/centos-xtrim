execute "disable ipv6 via sysctl.conf" do
  command "echo 'net.ipv6.conf.all.disable_ipv6=1' >> /etc/sysctl.conf"
  not_if "cat /etc/sysctl.conf | grep 'net.ipv6.conf.all.disable_ipv6=1'"
end

execute "disable ipv6 instantly" do
  command "sysctl -w net.ipv6.conf.all.disable_ipv6=1"
  command "sysctl -w net.ipv6.conf.default.disable_ipv6=1"
  command "service network restart"
  not_if "cat /proc/sys/net/ipv6/conf/all/disable_ipv6 | grep 1"
end
