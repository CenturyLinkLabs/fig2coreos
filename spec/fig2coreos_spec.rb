require 'spec_helper'

describe Fig2CoreOS do
  it 'does stuff' do
    expect {Fig2CoreOS.convert(
      'serf',
      'spec/fig.yml',
      '/tmp',
      type: 'fleet', skip_discovery_file: true
    )}.not_to raise_error
  end
end
