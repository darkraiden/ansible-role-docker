require 'serverspec'
set :backend, :exec

describe file('/usr/local/bin/docker-compose') do
    it { should exist }
    it { should be_executable.by('others') }
    it { should be_mode 755 }
end
