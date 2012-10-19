# filename: hello_there.mirah
# compiles to : HelloThere.class
# 
# mirah compiler removes the underscore on the source file name and creates a camel case version of it for the resulting java byte code, no matter what you name the class inside the source file---although, mirahc will still create the individual class files for each class definition you have in the source file

class Hello 
    
end

Hello.new