# comment in mirah, same as ruby
# filename: hello.mirah 
#
# 0. Make sure you have JRuby. If you have RVM, then - rvm use jruby
# 1. Compile to bytecode - mirahc hello.mirah
# 2. Compile to java source file - mirahc --java hello.mirah
# 3. Run the emitted byte code - java Hello
#
# Mirah compiler will take the name of the source file, and will generate a camelcase filename for resulting class file 

puts "Hello Mirah"

# lets see if docco can get there

System.out.println("Hello Java")