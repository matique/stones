require "test_helper"

class ModelConcernedWithTest < ActiveSupport::TestCase
  def setup
    @ctrl = Order.new
  end

  test "controller" do
    assert_equal "X", @ctrl.x
  end

  test "concerned_with :utils" do
    assert_equal "Y", @ctrl.y
  end
end
