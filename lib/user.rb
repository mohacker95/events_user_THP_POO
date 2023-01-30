require "pry"

class User
    attr_accessor :email, :age
    @@all_users = []

    def initialize(email_to_give,age_to_give)
        @email = email_to_give
        @age = age_to_give
        @@all_users << self
    end 
    def self.all
        return @@all_users
    end 

    def find_by_email
        
    end 

    

end 


binding.pry
puts "end of file"