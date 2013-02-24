require "wallpapering"
require "wallpapering-rails/version"

module Wallpapering
  class Decorator
    include ActionView::Helpers::UrlHelper

    private

    def urls
      ::Rails.application.routes.url_helpers
    end
  end

  module Rails
  end
end
