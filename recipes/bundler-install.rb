bash "run bundle install in app directory" do
  if node[:bundler][:apps_path]
    cwd File.join(node[:bundler][:apps_path], node[:bundler][:app], "current")
    code "bundle install"
  elsif node[:bundler][:app_path]
    p "Installing bundle in #{node[:bundler][:app_path]}"
    cwd File.join(node[:bundler][:app_path])
    code "bundle install"
  else
    p "Set 'bundler => apps_path & app', or 'bundler => app_path'"
  end
end