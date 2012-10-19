# filename: using_java_interfaces.mirah
#
# To implement an interface from Java, use the implements keyword. Not only
# can you implement interfaces from Java, you can also extend from them
#
# This code sample demonstrates a basic thread operation. MRunnable is implementing
# the java.lang.Runnable, creates instances of them, and passes them as argument
# to a Thread constructor.


import java.lang.Runnable 
import java.lang.Thread

class MRunnable
    implements Runnable

    def initialize(ctr:int, nm:String)
        @counter = ctr
        @name = nm
    end

    def run
        while true
            if((@counter += 1) < 1000)
                puts "#{@counter} #{@name}"
                Thread.sleep 2000
            end 
        end
    end
end


r1 = MRunnable.new 10, "Pig"
r2 = MRunnable.new 20, "Bird"

t1 = Thread.new r1
t2 = Thread.new r2

t1.start
t2.start
