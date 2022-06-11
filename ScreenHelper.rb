require 'colorize'

module Screen
    def Clear()
        system("clear")
    end  

    def error(err)
        puts  err + " that is not a option"
    end

    def Title(title)
        puts title.red
    end

    def Info(info) 
        puts info.yellow
    end

    def Passed(info) 
        puts info.green
    end

    def Home(setHome)
        setHome()
    end 

end