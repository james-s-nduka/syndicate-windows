# Syndicate Windows Cookbook

Provides a set of Windows-specific resources to aid in the creation of cookbooks/recipes targeting the Windows platform.

## Requirements

### Platforms

- Windows 7
- Windows Server 2008 R2
- Windows 8, 8.1
- Windows Server 2012 (R1, R2)

### Chef

- Chef 12.6+

## Resources

#### windows_auto_run
#### windows_certificate
#### windows_certificate_binding
#### windows_feature
#### windows_font
#### windows_http_acl
#### windows_pagefile
#### windows_printer_port
#### windows_printer
#### windows_share
#### windows_shortcut
#### windows_zipfile
#### windows_path

Add Sysinternals to the system path

```
windows_path 'C:\Sysinternals' do
  action :add
end
```
Remove 7-Zip from the system path

```
windows_path 'C:\7-Zip' do
  action :remove
end
```

#### windows_task

Update chef-client task with new password and log location
```
windows_task 'chef-client' do
  user 'Administrator'
  password 'N3wPassW0Rd'
  cwd 'C:\\chef\\bin'
  command 'chef-client -L C:\\chef\\logs\\'
  action :change
end
```

## Usage

Place an explicit dependency on the windows cookbook (using depends in the cookbook's metadata.rb) to use the Windows-specific resources/providers that ship with this cookbook.

```ruby
depends 'windows'
```

## License & Authors

- Author:: James Nduka ([james.s.nduka@synwin.co.uk](mailto:james.s.nduka@synwin.co.uk))

