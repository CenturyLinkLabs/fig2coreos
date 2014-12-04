require 'spec_helper'
require 'pathname'

describe Fig2CoreOS do
  shared_examples_for 'a generated file' do |file|
    let(:sample_file) {file}
    let(:found_file) {Dir["/tmp/#{e}"].first}

    it "is created" do
      expect(found_file).not_to be_nill
    end

    it "is properly written" do
      expect(FileUtils.compare_file(sample_file, found_file)).to be_true
    end
  end

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

      expected_files.each do |e|
        context "file #{e}"
      end
    end
      end
end
