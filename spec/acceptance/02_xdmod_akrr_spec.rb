require 'spec_helper_acceptance'

describe 'xdmod class:' do
  context 'appkernel and akrr enabled' do
    it 'should run successfully' do
      pp =<<-EOS
      host { 'xdmod.localdomain': ip => '127.0.0.1' }
      class { 'xdmod':
        apache_vhost_name => 'xdmod.localdomain',
        enable_appkernel  => true,
        akrr              => true,
      }
      EOS

      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end

    it_behaves_like 'xdmod-appkernels', default
    it_behaves_like 'akrr', default
  end
end