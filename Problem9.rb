
#part9
#https://github.com/esquireofoz/saas_class/blob/master/hw1/part6.rb
class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    @src_currency = singular_currency
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(dst_currency)
    (1 / @@currencies[dst_currency.to_s.gsub( /s$/, '')]) * self
  end
end

print 5.dollars.in(:euros)
print 10.euros.in(:rupees)