
# 7-zip attributes
if kernel['machine'] =~ /x86_64/
  default['7-zip']['url']          = "http://downloads.sourceforge.net/sevenzip/7z920-x64.msi"
  default['7-zip']['checksum']     = "62df458bc521001cd9a947643a84810ecbaa5a16b5c8e87d80df8e34c4a16fe2"
  default['7-zip']['package_name'] = "7-Zip 9.20 (x64 edition)"
else
  default['7-zip']['url']          = "http://downloads.sourceforge.net/sevenzip/7z920.msi"
  default['7-zip']['checksum']     = "fe4807b4698ec89f82de7d85d32deaa4c772fc871537e31fb0fccf4473455cb8"
  default['7-zip']['package_name'] = "7-Zip 9.20"
end
default['7-zip']['home']    = "#{ENV['SYSTEMDRIVE']}\\7-zip"

# PuTTY attributes
default['PuTTY']['url']		= "http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.62-installer.exe"
default['PuTTY']['checksum']	= "6583701d5262d7dfcf85e93257982872d59cd69e884650e541ae5c1fb03086fa" 
default['PuTTY']['packag_name'] = "PuTTY 0.62"
default['PuTTY']['home']    	= "#{ENV['SYSTEMDRIVE']}\\putty"

# Notepad++ attributes
default['Notepad++']['url']		= "http://download.tuxfamily.org/notepadplus/6.0/npp.6.0.Installer.exe"
default['Notepad++']['checksum']	= "42f7991bd628cf2f95bcc2ad24b52ea1653942dfc4ac8f0376dcf351c1d3a972"
default['Notepad++']['package_name']	= "Notepad++"
default['Notepad++']['home']    	= "#{ENV['SYSTEMDRIVE']}\\Notepad++"

# Sysinternals Suite attributes
default['sysinternals']['url']            = "http://download.sysinternals.com/files/SysinternalsSuite.zip"
default['sysinternals']['package_name']   = "Sysinternals Suite"
default['sysinternals']['home']           = "c:/bin/sysinternals"
