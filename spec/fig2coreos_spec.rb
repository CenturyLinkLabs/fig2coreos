require 'spec_helper'
require 'pathname'

describe Fig2CoreOS do
  describe '#convert' do
    context 'without discovery files' do
      let(:expected_files) { Dir['spec/support/sample/output/*.service'].map{|f| Pathname.new(f).basename}}
      before(:all) do
        Fig2CoreOS.convert(
          'serf',
          'spec/support/sample/input.yml',
          '/tmp',
          type: 'fleet', skip_discovery_file: true
        )
      end

      it 'creates correct service files' do
        expected_files
      end
    end
  end
end
