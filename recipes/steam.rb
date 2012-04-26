
windows_package node['steam']['home'] do
  source node['steam']['url']
  checksum node['steam']['checksum']
  action :install
end
