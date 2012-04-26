Description
===========

Installs a list of programs to make Windows useful.

Requirements
============

Platform
--------
 
* Windows XP
* Windows Vista
* Windows Server 2003 R2
* Windows 7
* Windows Server 2008 (R1, R2)
 
Cookbooks
---------
 
* [windows](https://github.com/opscode-cookbooks/windows)

Attributes
==========

Set `url, checksum, package_name and home` attributes for each program to be installed.

Add program to array in recipes/default.rb. 

Usage
=====

Download and install [Opscode Chef Full Installer for Windows](http://opscode.com/chef/install.msi).

Download and install [Git Full Installer](http://msysgit.googlecode.com/files/Git-1.7.8-preview20111206.exe)

create `c:\chef\cookbooks>` and add cookbook to directory

create `c:\chef\node.json`
  
    {
      "run_list": [
      "recipe[windows]",
      "recipe[chef-windows-programs]"
      ]
    }

create `c:\chef\solo.rb`
  
    log_level		:info
    log_location	STDOUT
    file_cache_path	"c:/chef/chef-cache"
    cookbook_path	"c:/chef/cookbooks"
	
execute chef-solo

`c:\>chef-solo -c c:/chef/solo.rb -j c:/chef/node.json`
