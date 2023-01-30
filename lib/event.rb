require 'pry'
require 'time'

class Event 
    attr_accessor :start_date, :duration, :title, :attendees
    
    def initialize(start,long, name ,email)
        @attendees=[]
        
     @start_date = Time.parse(start) #peut on utiliser le time.parse ici
     @duration = long
     @title = name
     @attendees << email
    end

    def postpone_24h
         postpone =start_date + 86400
         @start_date = postpone.to_s
    end 

    def end_date
        return @start_date + @duration *60
    end 

    def is_past?
       return  @start_date < Time.now ?
    end 
    

    def is_future?
       return @start_date > Time.now ?
    end 

    # def is_future?
    #     !self.is_past
    # end 


    def is_soon?
        return @start_date < 30*60
    end 

    def to_s
        puts(
            "titre : #{@title}\n
            debut : #{@start_date}\n
            durée : #{@duration}\n
            invités : "puts @attendees.join(", ")
            )

    end 

   

  
end 

binding.pry
puts"end"