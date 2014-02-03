class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end

hello = HelloWorldClass.new("{John R. Jones IV}")
hello.sayHi

hello2 = HelloWorldClass.new("Another name")
hello2.sayHi