#used to grab from the same file path
require_relative "ScreenHelper"
require_relative "register"


require 'uri'
require 'net/http'
require 'json'
require 'colorize'
require 'cli/ui'
#all helper functions for the screen
include Screen
homePage = ''
registerPage = ''
users = ''



# Screen.Clear()

def HomePage()
    Screen.Clear()
    Screen.Title("LighterChu Shop")
  
    output = CLI::UI::Prompt.ask('Welcome, what would you like todo') do |handler|
        handler.option('Register')  { |selection| selection  }
        handler.option('Show User')  { |selection| selection  }
        handler.option('Login')     { |selection| selection }
        handler.option('Quit')   { |selection| selection }
    end

   
    ReadHomeInput(output)
    
  
end 

def ReadHomeInput(input)
    puts input
    case input
        when 'Register'
            Screen.Clear()
            CreateUser()
            # GetData()
        when "Show User"
            Screen.Clear()
            ShowUsers()
    end
end 


def CreateUser()
    Screen.Title("REGISTER")
    Screen.Info("Just fill out some details and you will be register")
    puts "Your Email:"
    email = gets.chomp
    puts "Your User name:"
    userName = gets.chomp
    puts "Your Password:"
    password = gets.chomp
    puts "Your Name:"
    name = gets.chomp
    puts "Your Last Name:"
    lastName = gets.chomp
    
    users = User.new(email, userName,password,name,lastName)
    users.AddUser()
    Screen.Clear()
    users.showUsers()
    
    Screen.Passed("Account Created!!!")
    Screen.Passed("Hit any key to go back to the Home Page")
    gets
    HomePage()
end 


def ShowUsers()
    users.showUsers()
end


def GetData()
    url = URI("https://fakestoreapi.com/products")
    res = Net::HTTP.get(url)
    res = JSON.parse(res)
    res.map{|response|
        puts response["title"]
    }
   

end 



# checkingsomething(array)
HomePage()
# GetData()

