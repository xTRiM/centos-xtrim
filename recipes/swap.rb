
if node['swap_file']
  script 'create swapfile' do
    interpreter 'bash'
    not_if { File.exists?(node['swap_file']) }
    code <<-eof
      dd if=/dev/zero of=#{node['swap_file']} bs=1M count=#{node['swap_size']} &&
      chmod 600 #{node['swap_file']} &&
      mkswap #{node['swap_file']}
    eof
  end
  
  mount '/dev/null' do  # swap file entry for fstab
    action :enable  # cannot mount; only add to fstab
    device node['swap_file']
    fstype 'swap'
  end
  
  script 'activate swap' do
    interpreter 'bash'
    code 'swapon -a'
  end
end