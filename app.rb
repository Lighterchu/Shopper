#used to grab from the same file path
load 'ar.rb'
require_relative "ScreenHelper"
require_relative "usersClass"


require 'uri'
require 'net/http'
require 'json'
require 'colorize'
require 'cli/ui'

#all helper functions for the screen
include Screen
homePage = ''
registerPage = ''
allusers = []
allProducts = {}




# Screen.Clear()

def HomePage()
    Screen.Clear()
    Screen.Title("LighterChu Shop")

    
  
    output = CLI::UI::Prompt.ask('Welcome, what would you like todo') do |handler|
        handler.option('Register')  { |selection| selection  }
        handler.option('Login')     { |selection| selection }
        handler.option('Buy Items')     { |selection| selection }
        handler.option('Make Items')     { |selection| selection }
        handler.option('Delete Table')     { |selection| selection }
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
        #this is not live right now ( low priority )
        # when "Show User"
        #     Screen.Clear()
        #     ShowUsers()
        when 'Buy Items'
            Screen.Clear()
            ProductOption()
        when "Make Items"
            Screen.Clear()
            CreateProduct()
        when "Home"
            Screen.Clear()
            HomePage()
        when "Delete Table"
            Screen.Clear()
            DeleteAllFromTable()
    end 
end  

# Does not work right, but should remove the table from
# that you have picked
def DeleteAllFromTable()
    Product.find_each do |tablInfo|
        if(tablInfo.id === tablInfo.id) then
            tablInfo.destroy()
            tablInfo.save
        end
    end 
end 

def ProductOption()
    output = CLI::UI::Prompt.ask('What would you like to Buy') do |handler|
        Product.find_each do |productInfo|
            if(productInfo.name != '') then
                handler.option("#{productInfo.name} $#{productInfo.price} Stock Amount: #{productInfo.amount}")  { |selection| selection  }
            end 
        end
    end
    ReadProductInput(output)
end 

def ReadProductInput(input)
    puts input
    
end  

def CreateProduct()
    Screen.Title("add Items to the store")
    Screen.Info("What items would you like to start you're store")

    Screen.Info("Item Name:")
    name = gets.chomp
    Screen.Info("How much you want in the store:")
    amount = gets.chomp
    Screen.Info("What Price do you want to set:")
    price = gets.chomp
    
    item = Product.new
    item.name = name
    item.amount = amount
    item.price = price
    
    item.save
    puts item.inspect
    
    Screen.Passed("Food added to the store!!!")

    output = CLI::UI::Prompt.ask('Want to add more items or go back to home page quit') do |handler|
        handler.option('Make Items')     { |selection| selection }
        handler.option('Home')     { |selection| selection }
        handler.option('Quit')   { |selection| selection }
    end
    ReadHomeInput(output)
   
   

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
    
    users = MakeUser.new(email, userName,password,name,lastName)
    user = User.new
    user.email = email
    user.user_name = userName
    user.password = password
    user.name  = name
    user.last_name = lastName
    
    user.save
    puts user.inspect
    users.AddUser()
    Screen.Clear()
    users.showUsers()
    
    Screen.Passed("Account Created!!!")
    Screen.Passed("Hit any key to go back to the Home Page")
    puts "all users Test"
    gets
    HomePage()
end 







HomePage()





