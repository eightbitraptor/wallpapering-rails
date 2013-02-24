require 'rails/all'
require 'wallpapering-rails'

module Wallpapering

  describe Decorator do
    let(:decorator){ Decorator.new(decoratable) }
    let(:decoratable){ Object.new }

    let(:url_routes_helper){ double }

    it "includes ActionView URL Helpers" do
      expect(decorator.singleton_class.ancestors).
        to include(ActionView::Helpers::UrlHelper)
    end

    it "delegates routing helpers to the host application" do
      ::Rails.stub_chain(:application, :routes, :url_helpers).
        and_return(url_routes_helper)

      url_routes_helper.should_receive(:posts_path)

      decorator.send(:urls).posts_path
    end
  end
end
