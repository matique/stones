require "test_helper"

class ModelConcernedWithTest < ActiveSupport::TestCase
  def setup
    @model = Order.new
  end

  test "controller" do
    assert_equal "X", @model.x
  end

  test "concerned_with :utils" do
    assert_equal "Y", @model.y
  end
end
