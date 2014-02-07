#part11

class CartesianProduct
  include Enumerable

  def initialize(array_a, array_b)
    @cartesian_array = Array.new(0)
    array_a.each do |element_a|
      array_b.each do |element_b|
        tmp_array = Array.new(0)
        tmp_array.push(element_a,element_b)
        @cartesian_array.push(tmp_array)
      end
    end
    #returning the last thing done
    @cartesian_array
  end

  def each
    #yield?
    @cartesian_array.each { |index| yield(index) }
  end

end
a = [nil, 1, 2, 3, 4, 5]
b = [nil, 1, 2, 3, 4, 5]
c = CartesianProduct.new(a, b)

p  c.each{|elt| elt.inspect}
# c.each{|elt| puts elt.inspect}

