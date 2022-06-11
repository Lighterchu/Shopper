class User 
    attr_accessor :email, :username, :password 

    @@users = {}
    def initialize(email, username, password, name, lastname)
        @email = email
        @username = username
        @password = password
        @name = name
        @lastname = lastname
    end 

    def showUsers()
        @@users.each do |key, value|
            puts "#{key}: #{value}"
          end
    end   
     
    
    def AddUser()
        @@users = {
            email: @email,
            username: @username,
            password: @password,
            name: @name,
            lastname: @lastname
        }
        puts "#{@name} Added"
    end

    def RemoveUser()
        puts "#{@name} Removed"
    end
end 
