include_recipe "percona::package_repo"

package "Percona-Server-devel-56" do
  action :install
end
package "Percona-Server-client-56" do
  action :install
end