# DeepFreeze

Adds .deep_freeze method to Objects that aren't Classes and Modules.

    irb> hsh = {:a => {:b => :c}}.freeze
     => {:a=>{:b=>:c}} 
    irb> hsh[:a][:b] = nil; hsh
     => {:a=>{:b=>nil}}  # Oh, no

    irb> foo = {:a => {:b => :c}}.deep_freeze
     => {:a=>{:b=>:c}} 
    irb> foo[:a][:b] = nil
    RuntimeError: can't modify frozen Hash  # Oh yeah
      from (irb):7:in `[]='
      from (irb):7

## Installation

Add this line to your application's Gemfile:

    gem 'deep_freeze'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deep_freeze

## Usage

    Call .deep_freeze on Objects that aren't Classes or Modules.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
