class MyList
  include Enumerable
  def initialize(*x)
    @list = x
  end

  #now we implement #each
  def each(&block)
    @list.each(&block)
    self #return the original array
  end

  require_relative 'MyEnumerable'
end

list = MyList.new(1, 2, 3, 4)
p list