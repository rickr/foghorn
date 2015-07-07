require 'foghorn'
include Foghorn::Exceptions

###
### Exceptions currently overrides StdError so anything
### That inherits should give us a motivation quote from
### Mr. Leghorn

begin
  raise
rescue => e
  puts e
end
puts "\n\n"

begin
  raise NoMethodError, 'Custom messages are passed on a newline'
rescue => e
  puts e
end
puts "\n\n"

# And this is what a stack strace would look like
42 / 0
