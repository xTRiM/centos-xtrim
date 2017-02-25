remote_file "/usr/local/src/msttcore-fonts-2.6-1.noarch.rpm" do
  source "https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm"
  #action :create_if_missing
  not_if "rpm -qa | grep -qx 'msttcore-fonts-2.6-1.noarch'"
end

package "msttcore-fonts-2.6-1.noarch" do
  action :install
  source "/usr/local/src/msttcore-fonts-2.6-1.noarch.rpm"
  options "--nogpgcheck"
  #notifies :run, "bash[update-alternatives java]", :immediately
end
