require "test_helper"

class FlashComponentTest < ViewComponent::TestCase
  def test_none
    render_inline(FlashComponent.new)
    assert_text ""
  end

  def test_one
    error = "An error"
    flash = {error:}
    render_inline(FlashComponent.new(flash))
    assert_selector "p.flash_error"
    assert_text error
  end
end
