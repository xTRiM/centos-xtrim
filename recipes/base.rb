#package 'cowsay'

#ruby_block 'Greet the user' do
#  block do
#    puts Mixlib::ShellOut.new("cowsay '#{node['cowsay']['greeting']}'").run_command.stdout
#  end
#end


package "wget" do
  action :install
  not_if "rpm -q wget"
end

package "traceroute" do
  action :install
  not_if "rpm -q traceroute"
end

package "man" do
  action :install
  not_if "rpm -q man"
end

package "crontabs" do
  action :install
  not_if "rpm -q crontabs"
end

package "gcc" do
  action :install
  not_if "rpm -q gcc"
end

package "make" do
  action :install
  not_if "rpm -q make"
end

package "rpm-build" do
  action :install
  not_if "rpm -q rpm-build"
end

package "tcpdump" do
  action :install
  not_if "rpm -q tcpdump"
end

package "sqlite-devel " do
  action :install
  not_if "rpm -q sqlite-devel"
end

package "curl-devel" do
  action :install
  not_if "rpm -q curl-devel"
end

package "mlocate" do
  action :install
  not_if "rpm -q mlocate"
end 

package "libxml2-devel" do
  action :install
  not_if "rpm -q libxml2-devel"
end 

package "libxslt-devel" do
  action :install
  not_if "rpm -q libxslt-devel"
end 

package "fontconfig" do
  action :install
  not_if "rpm -q fontconfig"
end 
 
package "freetype" do
  action :install
  not_if "rpm -q freetype"
end 

package "libfreetype.so.6" do
  action :install
  not_if "rpm -q libfreetype.so.6"
end 

package "libfontconfig.so.1" do
  action :install
  not_if "rpm -q libfontconfig.so.1"
end

package "libstdc++.so.6" do
  action :install
  not_if "rpm -q libstdc++.so.6"
end

#
# chkconfig
#
execute "chkconfig crond on" do
  command "chkconfig crond on"
end
