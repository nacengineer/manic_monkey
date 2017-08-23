# Manic Monkey #
Some simple monkeypatches to ruby core classes

## String ##
The string class now has an unindent method. This is useful for things like HERE docs.

Sample usage

```require 'manic_monkey'```

*This will produce a string with a two space indent*
```ruby
def some_large_string
  <<-HERE
  ███████▄▄███████████▄
  ▓▓▓▓▓▓█░░░░░░░░░░░░░░█
  ▓▓▓▓▓▓█░░░░░░░░░░░░░░█
  ▓▓▓▓▓▓█░░░░░░░░░░░░░░█
  ▓▓▓▓▓▓█░░░░░░░░░░░░░░█
  ▓▓▓▓▓▓█░░░░░░░░░░░░░░█
  ▓▓▓▓▓▓███░░░░░░░░░░░░█
  ██████▀▀▀█░░░░██████▀
  ░░░░░░░░░█░░░░█
  ░░░░░░░░░░█░░░█
  ░░░░░░░░░░░█░░█
  ░░░░░░░░░░░█░░█
  ░░░░░░░░░░░░▀▀
  HERE
end
```

*With unindent String monkey patch... no spaces*
```ruby
def some_large_string
  <<-HERE.unindent
  ░░░░░░░░░░░░░░░░░░░░░░░▄▄
  ░░░░░░░░░░░░░░░░░░░░░░█░░█
  ░░░░░░░░░░░░░░░░░░░░░░█░░█
  ░░░░░░░░░░░░░░░░░░░░░█░░░█
  ░░░░░░░░░░░░░░░░░░░░█░░░░█
  ░░░░░░░░░░░███████▄▄█░░░░░██████▄
  ░░░░░░░░░░░▓▓▓▓▓▓█░░░░░░░░░░░░░░█
  ░░░░░░░░░░░▓▓▓▓▓▓█░░░░░░░░░░░░░░█
  ░░░░░░░░░░░▓▓▓▓▓▓█░░░░░░░░░░░░░░█
  ░░░░░░░░░░░▓▓▓▓▓▓█░░░░░░░░░░░░░░█
  ░░░░░░░░░░░▓▓▓▓▓▓█░░░░░░░░░░░░░░█
  ░░░░░░░░░░░▓▓▓▓▓▓█████░░░░░░░░░█
  ░░░░░░░░░░░██████▀░░░░▀▀██████▀
  ◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈
  ░█░░░█░█░▄▀░█▀▀░░░░▀█▀░█░█░█░▄▀▀░
  ░█░░░█░█▀░░░█▀░░▄▄░░█░░█▀█░█░░▀▄░
  ░█▄▄░█░█░▀▄░█▄▄░░░░░█░░█░█░█░▄▄▀░
  ◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈☻◈
  HERE
end
```
## Hash ##

### Hash#symbolize_keys! ###
Rails Hash method *symbolize_keys!* to turn keys of strings into symbols

### Hash#deep_symbolize
Deep symbolize method to symbolize keys recursively
[See this gist for more information.](https://gist.github.com/998709)

Symbolizes all of hash's keys and subkeys.
Also allows for custom pre-processing of keys (e.g. downcasing, etc)
if the block is given:

```ruby
somehash.deep_symbolize { |key| key.downcase }
```

#### Usage ####
Either include it into global Hash class to make it available to all hashes, or extend only your own hash objects with this module.

Example 1:

```ruby
class Hash
  include DeepSymbolizable
end
```
Example 2:

```ruby
myhash.extend DeepSymbolizable
```
