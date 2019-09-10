# bools

`bools` is a small Ruby gem that makes it easy to evaluate boolean conditionals.

## Howto

Just `require 'bools'` and write a method called `test` that accepts one or
more boolean values. Process those values and return a boolean. A table will
be output which shows all the possible input values and their results. The
total number of combinations of input variables will be dynamically calculated
based on the arity of the `test` method.

## Examples

This small file:

```ruby
require 'bools'

def test(a, b, c, d)
  a == c
end
```

Produces the following:

```
a b c d | result
--------+-------
0 0 0 0 | 1
0 0 0 1 | 1
0 0 1 0 | 0
0 0 1 1 | 0
0 1 0 0 | 1
0 1 0 1 | 1
0 1 1 0 | 0
0 1 1 1 | 0
```

Notice that 4 booleans are checked, since there are 4 input variables.

## Why?

Many times when coding, it is necessary to process multiple conditionals in
order to return a desired result. This can get pretty tedious when trying to
calculate all combinations by hand. This library allows you to define a single
method, called `test`, supply however many input booleans you need, define the
logic that returns the final result, and display everything in a small table.
