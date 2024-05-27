# typed: false
# frozen_string_literal: true

module Deprecated::Inputs
  class RecaptchaInputComponent < Deprecated::ApplicationV6Component
    def initialize(view_context, recaptcha:)
      super view_context
      @recaptcha = recaptcha
    end

    def render
      build_html do |h|
        h.tag :input, name: "recaptcha_token", type: "hidden", id: @recaptcha.id
      end
    end
  end
end
