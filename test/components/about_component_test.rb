require "test_helper"

class AboutComponentTest < ViewComponent::TestCase
  def test_none
    render_inline(AboutComponent.new)

    assert_selector("div.about")
    assert_selector("div.rounded-box")
    refute_selector("h1")
    assert_text("Ruby ")
    assert_text("Rails ")
    assert_text("Time ")
  end

  def test_title
    title = "Title"
    render_inline(AboutComponent.new(title:))

    assert_selector "h1"
    assert_text title
  end

  def test_system_text
    system_text = "System\nOS"
    render_inline(AboutComponent.new(system_text:))

    assert_text "System"
    assert_text "OS"
  end
end
