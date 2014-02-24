require 'test/unit'
require 'fig2coreos'

class Fig2CoreOSTest < Test::Unit::TestCase
  def setup(options={})
    Fig2CoreOS.convert(
      "test-app",
      File.join(File.expand_path(File.dirname(__FILE__)), "fig.yml"), 
      File.join(File.expand_path(File.dirname(__FILE__)), "output"),
      options
    )
  end

  def test_fig_to_coreos_vagrant
    setup(type: 'vagrant')
    assert_equal 1, 1
  end

  def test_fig_to_coreos_systemd
    setup(type: 'systemd')
    assert_equal 1, 1
  end
end
