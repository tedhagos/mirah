# filename : inherit.mirah
# 
# Inheritance mechanism is a lot like Ruby, use < to denote extension. 
# Call the constructor of the super class using, well, super. 
#
# Invoking a method on the super class uses simply, the super keyword also. Beware
# if you are coming from Java, the call isn't super.foo, inside the method foo
# of the child class, simply invoke "super", that will do the trick


class Base 
       
    def initialize
        puts "CTOR Base"
        
        @foo = "base foo"
        
    end
    
    def foo
        puts "value of foo is #{@foo}"
    end
    
end

class Derived < Base

    def initialize
        super
        puts "CTOR Derived"
    end
    
    def foo
        super
        puts "boo"
    end
    
end

obj = Derived.new
obj.foo