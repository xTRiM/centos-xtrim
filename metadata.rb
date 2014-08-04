name             'centos-xtrim'
maintainer       'RT'
maintainer_email 'maintainer@email'
license          "Apache 2.0"
description      'Installs base packages for centos'
version          '1.0.5'

%w{redhat centos}.each do |os|
  supports os
end

%w[ build-essential runit yum ].each do |cookbook|
  depends cookbook
end