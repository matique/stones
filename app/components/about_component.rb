# frozen_string_literal: true

class AboutComponent < ViewComponent::Base
  def initialize(text: "", title: nil, system_text: nil)
    @title = title
    arr = text.split("\n")

    arr += system_text ? system_text.split("\n") : system_default
    arr << "Time #{Time.now.localtime}"
    @lines = arr.flatten
  end

  slim_template <<~HEREDOC
    css:
      div.about {
        height: 70%;
        margin: 1em 0;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 1.2em;
        font-weight: bold;
      }
      div.about div.rounded-box {
        border: 1px solid grey;
        border-radius: 0.3em;
        padding: 5px 8px;
      }

    .about
      .rounded-box
        - if @title
          h1 = @title
          hr
        - @lines.each do |line|
          p = line
  HEREDOC

  private

  def system_default
    arr = []
    str = "Ruby #{RUBY_VERSION}"
    str += "-p#{RUBY_PATCHLEVEL}" unless Rails.env.production?
    arr << str
    str = "Rails #{Rails.version}"
    str += " (#{Rails.env})" unless Rails.env.production?
    arr << str
  end
end
