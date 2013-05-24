require "rails/all"
require "rails/generators"
require "generator_spec/test_case"

require_relative "../../../../lib/generators/wallpapering/decorator_generator"

module Wallpapering
  describe DecoratorGenerator do
    include GeneratorSpec::TestCase

    destination File.expand_path("generator_specs", '/tmp')

    arguments ["WithKittens"]

    before do
      prepare_destination
      run_generator
    end

    it "creates the app/decorators directory" do
      assert_directory "app/decorators"
    end

    it "creates the named decorator" do
      assert_file "app/decorators/with_kittens.rb",
        "class WithKittens < Wallpapering::Decorator\nend\n"
    end
  end
end
