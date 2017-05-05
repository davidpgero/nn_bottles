# NnBottles

99 bottles problem. I've just started to read [99 Bottles of OOP](https://www.sandimetz.com/99bottles/) book.

## Installation

Add this line to your application's Gemfile:

```ruby
cd nn_bottles
gem install bundler
bundle install
```

## Usage

```bash
cd nn_botles
bundle console
```

And in the Console

```ruby
client = NnBottles::Client.new
the_song = client.sing
the_song.each do |line|
  puts line
end
```

## Test

    $ rspec spec

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nn_bottles.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
