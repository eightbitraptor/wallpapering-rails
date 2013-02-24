# Wallpapering::Rails

[![Build Status](https://travis-ci.org/eightbitraptor/wallpapering-rails.png)](https://travis-ci.org/eightbitraptor/wallpapering-rails)

Wallpapering integration for Rails.

Wallpapering is a decorator pattern implementation in Ruby

## Installation

Add this line to your application's Gemfile:

    gem 'wallpapering-rails'

And then execute:

    $ bundle

## Usage

`wallpapering-rails` provides a generator for rails to build your own generators.

Just run `rails g wallpapering:decorator <decorator name>`. Where `<decorator name>` is underscored or hyphenated. eg

    $ rails g wallpapering:decorator with_sugar
    # generates app/decorators/with_sugar.rb => class WithSugar < Wallpapering::Decorator

`wallpapering-rails` assumes that you want your decorators to live in `app/decorators`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
