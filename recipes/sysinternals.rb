
# install Sysinternals with the windows_zipfile method
windows_zipfile node['sysinternals']['home'] do
  source node['sysinternals']['url']
  action :unzip
  not_if {::File.exists?("#{['sysinternals']['home']}/PsExec.exe")}
end

