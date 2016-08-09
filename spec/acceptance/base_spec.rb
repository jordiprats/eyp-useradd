require 'spec_helper_acceptance'
require_relative './version.rb'

describe 'useradd class' do

  context 'basic setup' do
    # Using puppet_apply as a helper
    it 'should work with no errors' do
      pp = <<-EOF

      class { 'useradd': }

      EOF

      # Run it twice and test for idempotency
      expect(apply_manifest(pp).exit_code).to_not eq(1)
      expect(apply_manifest(pp).exit_code).to eq(0)
    end

    describe file("/etc/default/useradd") do
      it { should be_file }
      its(:content) { should match 'GROUP=100' }
      its(:content) { should match 'HOME=/home' }
      its(:content) { should match 'INACTIVE=-1' }
      its(:content) { should match 'EXPIRE=' }
      its(:content) { should match 'SHELL=/sbin/nologin' }
      its(:content) { should match 'SKEL=/etc/skel' }
    end

  end
end
