module AnEnumerable
  def all?
    var = true
    each { |item| var = false unless yield item }
    var
  end

  def any?
    var = false
    each { |item| var = true if yield item }
    var
  end

  def filter
    arr = []
    each { |item| arr.push(item) if yield item }
    arr
  end
end
