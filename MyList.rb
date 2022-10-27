class MyList
  def thelist(arr)
    @list = arr
    list.each do |element|
      @list= element
  end
end

list = MyList.new(1, 2, 3, 4)
puts list