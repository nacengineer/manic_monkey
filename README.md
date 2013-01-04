# zookeeper #
Some simple monkeypatches to ruby core classes

## String ##
The string class now has an unindent method. This is useful for things like HERE docs.

Sample usage

*This will produce a string with a two space indent*
```ruby
def some_large_string
  <<-HERE
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
Added the Rails Hash method symbolize_keys! to turn keys of strings into... symbols

