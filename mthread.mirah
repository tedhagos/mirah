

class MThread < Thread

    def initialize
       @counter = 0 
    end

    def run: void
        while true
            puts "#{++@counter}"
        end
    end

end


MThread.new.start