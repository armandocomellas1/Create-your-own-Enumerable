require_relative 'my_enumerable'

# Using the include inside our MyList class will allow MyEnumerable to
# have access to the list with parameters.

class MyList
  include MyEnumerable
  # Here we initialize a variable using the splat operator
  # Type an (*) before the name of the variable means that we'll pass many argmnst
  # parameters are collected up and an array is created.
  def initialize(*my_list)
    @list = my_list
  end

  # Here we create an explicit block, which basically calls or retrieve the items
  # every time we use an enumerable
  def each(&block)
    @list.each(&block)

    # It's the same that the code below
    # @list.each do |item|
    # block.call(item)
  end
end

mynewlist = MyList.new(1, 2, 3, 4, 5)

puts(mynewlist.all? {|e| e < 5})
puts(mynewlist.all? {|e| e > 5})
puts(mynewlist.any? {|e| e == 2})
puts(mynewlist.any? {|e| e == 5})
puts(mynewlist.filter {|e| e.even?})
