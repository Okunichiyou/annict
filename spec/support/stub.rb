# frozen_string_literal: true

RSpec.configure do |config|
  config.before :suite do
    ImageHelper.module_eval do
      def v4_ann_image_url(*)
        "#{ENV.fetch("ANNICT_URL")}/dummy_image"
      end
    end

    ImageV6Helper.module_eval do
      def v6_ann_image_url(*)
        "#{ENV.fetch("ANNICT_URL")}/dummy_image"
      end
    end
  end
end
