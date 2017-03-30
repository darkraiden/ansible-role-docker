require 'serverspec'
set :backend, :exec

describe package('docker-engine') do
    it { should be_installed }
end

describe user('test') do
    it { should belong_to_group('docker') }
end

