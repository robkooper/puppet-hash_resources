require 'spec_helper'

describe 'hash_resources' do
  let(:params) do
    {
      :resources => {
        'file' => {
          '/tmp/foo' => { 'ensure' => 'present', 'content' => 'foo' },
          '/tmp/bar' => { 'ensure' => 'present', 'content' => 'bar' },
        },
      },
    }
  end

  it { is_expected.to contain_file('/tmp/foo').with_content('foo') }
  it { is_expected.to contain_file('/tmp/bar').with_content('bar') }
end
