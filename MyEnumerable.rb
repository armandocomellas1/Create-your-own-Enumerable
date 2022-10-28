module MyEnumerable
  def self.all(props)
    props.all? {|e| e < 5}
    props.all? {|e| e > 5}
  end

  def self.any(props)
    props.any? {|e| e == 2}
    props.any? {|e| e == 5}
  end

  def self.filter(props)
    props.any? {|e| e == 2}
    props.any? {|e| e == 5}
  end
end
