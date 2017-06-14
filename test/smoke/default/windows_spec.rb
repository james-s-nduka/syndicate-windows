# Author: James Nduka
# Target OS: Windows 2008+ R2

describe file('C:/opscode/chef/bin/chef-client') do
  it { should exist }
  it { should be_file }
end

describe windows_task('\chef-client') do
  it { should exist }
  it { should be_enabled }
  its('logon_mode') { should eq 'Interactive/Background' }
  its('task_to_run') { should match /.*(chef-client).*/ }
end
