# Foghorn
https://github.com/rickr/foghorn/fork

![Foghorn Leghorn Photo](/docs/Foghorn_Leghorn.png?raw=true "Foghorn Leghorn")

Add a little Foghorn Leghorn to your ruby:
```ruby
pry(main)> Boy.I.say "boy what's wrong with you"
boy what's wrong with you

pry(main)> I.say.I.say.I.say 'ruby is awesome'
ruby is awesome

pry(main)> Boy.I.say.boy "what's with you and chunky bacon"
what's with you and chunky bacon

pry(main)> [1, 2].first(1, 2)
ArgumentError: You're way off, I say you're way off this time son!
wrong number of arguments (2 for 1)

pry(main)> 1 / 0
ZeroDivisionError: Smart boy, got a mind like a steel trap – full of mice
divided by 0
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'foghorn-leghorn', '~> 1.0.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install foghorn-leghorn
    
## Usage
There are 3 modules you can include depending on how much Foghorn you think you can handle.

#### Methods
This will mix in some Foghorn-ish methods for you to use:
```ruby
require 'foghorn'
include Foghorn::Methods
```
Check out [the example](examples/foghorn_methods.rb) for some usage ideas.

#### Exceptions
Add a random Foghorn quote to your exceptions:
```ruby
require 'foghorn'
include Foghorn::Exceptions
```
#### Minitest Assertions
Add Foghorn inspired minitest assertions:
```ruby
require 'foghorn'
require 'minitest'
require 'minitest/autorun'
include Foghorn::Minitest
```

This will add the following assertions:  
`i_do_declare actual, :to_be, expected` - wrapper for assert_equal  
`i_do_declare actual, :to_not_be, expected` - wrapper for refute_equal  


## Contributing
Pull Requests and issues welcome. Pull Request or issue comments in Foghornese even more welcome.
