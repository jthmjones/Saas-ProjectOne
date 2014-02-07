#part7a
#http://pastebin.com/XN3B9LrH
class Dessert
	attr_accessor :name, :calories
	def initialize(name, calories)
		@name,@calories=name,calories
	end
	#attr_accessor :name, :calories
	def healthy?
		@calories<200
	end
	def delicious?
		@desert !=0
	end
end

#part7b
class JellyBean < Dessert
	attr_accessor :flavor
	def initialize(name, calories,flavor)
		super(name,calories)
		@flavor=flavor
	end
	def delicious?
		flavor!="black licorice"
	end
end

dessert1=Dessert.new("icecream",200)
dessert2=JellyBean.new("icecream",0,"black licorice")
puts dessert2.delicious?
puts dessert1.delicious?

#print dessert2.healthy?
