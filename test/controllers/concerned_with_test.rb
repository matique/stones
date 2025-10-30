require "test_helper"

class ControllerConcernedWithTest < ActiveSupport::TestCase
  def setup
    @ctrl = OrdersController.new
  end

  test "controller" do
    assert_equal "X", @ctrl.x
  end

  test "concerned_with :utils" do
    assert_equal "Y", @ctrl.y
  end
end
