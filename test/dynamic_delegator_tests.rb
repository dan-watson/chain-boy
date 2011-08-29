libdir = File.dirname(File.dirname(__FILE__)) + '/lib'
$LOAD_PATH.unshift libdir unless $LOAD_PATH.include?(libdir)

require 'test/unit'
require 'chain-boy'


class DynamicDelegatorTests < Test::Unit::TestCase
  def test_delegate_method_call
    adder = DynamicDelegator.new(Adder.new(1))
    adder.add(1)
    adder.add(1)
    assert_equal 3, adder.number
  end

  private
  class Adder
    def initialize(number)
      @number = number
    end

    def add(number)
      Adder.new(number + @number)
    end

    def number
      @number
    end
  end
end
