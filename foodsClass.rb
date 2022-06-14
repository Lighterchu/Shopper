class  Foods 
    
    attr_accessor :name
    def initialize(name) 
        @name = name
    end

    def foodname()
        puts name
    end 

end 

banana = Foods.new("banana")
banana.foodname()