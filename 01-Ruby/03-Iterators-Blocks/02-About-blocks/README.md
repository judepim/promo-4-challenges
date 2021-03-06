## Background & Objectives

Blocks are chunks of code enclosed between `{}` (for 1-line blocks) or between `do..end` (for muli-line blocks).
Although we can store them in `Proc` objects and pass them to a method as standard arguments, **many methods can just be called with an implicit block given after the list of arguments**. In fact, that's exactly what you did with all these iterators ! This implicit block is executed any time the keyword `yield` appears in the method definition. Use the resources to learn more on blocks. The objectives are :

- Know the syntax to call a method with an implicit block (either 1-line or multiline).
- Understand what happens when passing a parameter to the block.
- Implement some basic methods which are using `yield`, to understand the inner mechanics.


## Specs

### HTML generator method

Implement the `#tag` method that builds the HTML tags around the content we give it in the block. For instance:

```ruby
tag("h1") { "Some Title" }
# => "<h1>Some Title</h1>"
```

This method accepts a second optional parameter, enabling to pass an array with one HTML attribute name and its value,
like `["href", "www.google.com"]`.

```ruby
tag("h1", ["id", "title"]) do
  "Some Title"
end
# => "<h1 id='title'>Some Title</h1>"
```

#### Arguments with default value

In ruby you can supply a default value for an argument. This means that if a value for the argument isn’t supplied, the default value will be used instead, e.g.:

```ruby
def sum(a, b = 0)
  a + b
end

sum(3, 6) # => 9
sum(4)    # => 4
```

Here, the second argument is worth `0` if we call `sum` with only one argument.

#### Link with Rails

When you will discover Rails helper methods, you will see that they do exatly the same as your home-made `#tag` method. They write HTML for you :)


### Timer method

Implement a block-timer in `#timer_for` than enables to track the duration (in seconds) of execution of any given block. It should work this way.

```ruby
timer_for do
  (1..100).each { |i| (1..100000).to_a.shuffle.sort }
end
# => 3.39051 seconds elapsed
```

## Learning Badges

You should be able to answer these questions on a sheet of paper without computer-assistance :)

- What's a block ? How do you call a method with an implicit block ?
- What's the syntax of if this block has only 1 ruby instruction in it ? several ?
- Re-consider all the iterators you used `#each_with_index`, `#select`, `#find`... Is it 100% clear that most of them are methods called with blocks ?
- (optional) Could you figure out approximately how the `map` iterator is coded for instance ?
