remote_file "/usr/local/src/msttcore-fonts-2.0-3.noarch.rpm" do
  source "http://www.my-guides.net/en/images/stories/fedora12/msttcore-fonts-2.0-3.noarch.rpm"
  #action :create_if_missing
  not_if "rpm -qa | grep -qx 'msttcore-fonts-2.0-3.noarch'"
end

package "msttcore-fonts-2.0-3.noarch" do
  action :install
  source "/usr/local/src/msttcore-fonts-2.0-3.noarch.rpm"
  options "--nogpgcheck"
  #notifies :run, "bash[update-alternatives java]", :immediately
end
