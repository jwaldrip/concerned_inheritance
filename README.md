[![Build Status](https://travis-ci.org/jwaldrip/concerned_inheritance.png?branch=master)](https://travis-ci.org/jwaldrip/concerned_inheritance)

# ConcernedInheritance

ConcernedInheritance, allows you to place inheritance callbacks within your concerns.

## Installation

Add this line to your application's Gemfile:

    gem 'concerned_inheritance'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install concerned_inheritance

## Usage

To use concerned inheritance, just include it in your class or module. Any callbacks defined in modules will only get run if the parent class is also extended.

```ruby

class MyClass
  include ConcernedInheritance

  inherited do
    puts "#{self} was inherited from #{baseclass}
  end

end

module MyModule
  include ConcernedInheritance

  inherited do
    puts "#{self} was inherited from #{baseclass}
  end

end

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
