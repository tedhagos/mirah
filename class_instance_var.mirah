# filename: class_instance_var.mirah
#
# Definition of member variables are done inside the def initialize. Don't do it
# java style, where variables are defined on the same structural level as methods
#
# instance members are prepended with @, static members with @@
# 
# Getter and setter methods for variables are hand coded, there is no
# equivalent of the ruby accessor methods attr_accessor :nameofvar
# 
# instance methods are written without ceremony, just def nameOfMethod. Static
# methods on the other hand, needs to have self.NameOfMethod


class Circle 

   
   def initialize
       @instancevar = "instance"
       @@statvar = "static var"
   end 
    
   def instancevar
      @instancevar 
   end
   
   def instancevar=(val:String)
      @instancevar = val 
   end
   
   
   def self.statvar=(a:String)
       @@statvar = a
   end
   
   def self.statvar
       @@statvar
   end
   
   
   def self.staticmethod
      "This is a static method" 
   end
   
   
end

obj = Circle.new
puts obj.instancevar
obj.instancevar = "New Value : Instance Var"
puts obj.instancevar

puts Circle.staticmethod
puts Circle.statvar
puts Circle.statvar = "New value for statvar"
puts Circle.statvar