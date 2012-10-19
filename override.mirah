# filename: override.mirah
#
# Override is easy to achieve, just redefine the method in the derived 
# class. 
#
# NOTES: 
# 1. instance and static members of the parent are inherited
# 2. derived classes have access to both instance and static members
#    of the parent class

class Parent
   
    def initialize
        @name = "parent name"
        @@statvar = "static var"
        puts "CTOR of the Parent"
    end
    
    def goo
        puts "#{@name} : name " 
    end
    
end

class Child < Parent 
    
    def goo
       super
       @name = "Child name"
       puts "#{@name} : name " 
    end
    
    def self.statictest
       @@statvar = "something else"
       puts "#{@@statvar} in child" 
    end
    
end

obj = Child.new
obj.goo
Child.statictest