class MyList
  require_relative 'MyEnumerable'
  extend MyEnumerable
  def initialize(*args)
    @list = Array.new(args)
  end

  def each
    yield(@list)
    MyEnumerable::all(@list)
    MyEnumerable::any(@list)
    MyEnumerable::filter(@list)
  end
end

list = MyList.new(1,2,3,4)
p list


@example = 0
def pick_example(list)
  list.each do |num|
    @example = num
  end
end
pick_example(list)
print @example
list = @example

p(list.all? {|e| e < 5})
p(list.all? {|e| e > 5})

p(list.any? {|e| e == 2})
p(list.any? {|e| e == 5})

p(list.filter {|e| e.even?})
