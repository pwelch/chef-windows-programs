
# install programs with .exe or .msi installers
# windows_package attempts to determine the best method if not specified
%w{ 7-zip PuTTY Notepad++ }.each do |pkg|
  windows_package node[pkg]['package_name'] do
    source node[pkg]['url']
    checksum node[pkg]['checksum']
    action :install
  end
end

# update paths
%w{ 7-zip PuTTY Notepad++ }.each do |pkg|
  windows_path node['pkg']['home'] do
    action :add
  end
end

# install Sysinternals with the windows_zipfile method
windows_zipfile node['sysinternals']['home'] do
  source node['sysinternals']['url']
  action :unzip
  not_if {::File.exists?("#{['sysinternals']['home']}/PsExec.exe")}
end