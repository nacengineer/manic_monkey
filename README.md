# Manic Monkey #
Some simple monkeypatches to ruby core classes

## String ##
The string class now has an unindent method. This is useful for things like HERE docs.

Sample usage

```require 'manic_monkey'```

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

# Hash Accessors

Typical Useage: You need accessors to the level 1 keys of database stored
serialized data, e.g. json, jsonb, xml

In your class that has the serialized db column

```
class AwesomeSauce
  hash_accessor :column_of_serialized_data, :key1, :key2
```

This should now allow you to call the method directly on an object created
from the class

```
@object = AwesomeSauce.new
@object.key1
```

versus

```
@object = AwesomeSauce.new
@object.column_of_serialized_data[:key1]
```