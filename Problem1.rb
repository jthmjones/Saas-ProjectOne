
#instant of class Class assigned HelloWorldClass const
#when called the class invokes allocate for memory

class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end
#sets hello to class of Class HelloWorldClass with the input john
hello = HelloWorldClass.new("{John R. Jones IV}")
#calls sayHi in class Class HelloWorldClass
hello.sayHi

hello2 = HelloWorldClass.new("Another name")
hello2.sayHi