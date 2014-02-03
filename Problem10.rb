#part10a

class String
  def palindrome?
    tmp_str = self.downcase.gsub(/[^a-z]/,'')
    tmp_str.reverse == tmp_str
  end
end

#part10b

module Enumerable
  def palindrome?
    self == self.reverse
  rescue NoMethodError
    self.to_a == self.to_a.reverse
  end
end
