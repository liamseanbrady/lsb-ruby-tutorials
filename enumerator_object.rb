enum = [1, 2, 3].each

# Iteration is defined by the given block, in which a “yielder” object, given as block parameter, can be used to yield a value:

# fib = Enumerator.new do |y|
#   a = b = 1
#   loop do
#     y << a
#     a, b = b, a + b
#   end
# end

# fib.take(10) # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
# The optional parameter can be used to specify how to calculate the size in a lazy fashion. It can either be a value or a callable object.


# @names = %w[Ingin Tattie Coco Jayne]

# def names
#   p @names
#   yield @names.shift
#   p @names
#   yield @names.shift
#   p @names
#   yield @names.shift
#   p @names
#   yield @names.shift
#   p @names
# end

# names do |name|
#   puts name
# end

# def yield_to_block
#   if block_given?
#     yield "a block has been given"
#   else
#     raise 'No block given'
#   end
# end

# yield_to_block do |input|
#   puts "Hello #{input}"
# end

# def yield_to_block
#   yield 
#   yield 
#   yield 
#   yield 
# end

# yield_to_block

def any_method(method_param)
  puts "I'm being printed from the method"
  yield('message')
  puts "I'm being printed again from the method"
  yield('another parameter')
  method_param
end

# any_method do |passed_to_block|
#   puts "Hi, from the block WITH #{passed_to_block}" 
# end


# Why does this get called/printed first? Confusing!
def some_method
  puts "Hi, from the external method"
end

any_method(some_method) do |passed_to_block|
  puts "Hi, from the block WITH #{passed_to_block}" 
end


# yield is basically a signal for the block to do its thing.
# yield(param) is a signal for block to do it's thing WITH something





