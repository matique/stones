# frozen_string_literal: true

class FlashComponent < ViewComponent::Base
  def initialize(flash = {})
    @flash = flash
  end

  slim_template <<~HEREDOC
    css:
      .flash_notice {
        animation: animate_notice 5s linear 2s forwards;
      }
      @keyframes animate_notice {
        from { opacity: 1; }
        to { opacity: 0; }
      }

    - @flash.each do |key, value|
      p class="flash_#\{key}" = sanitize(value)
  HEREDOC
end
