include_recipe "percona::package_repo"

package "Percona-Server-devel-55" do
  action :install
end
