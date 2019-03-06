class Fandango::Movies 

attr_accessor :name, :price, :availability, :url 

    def self.showings
       # I should return a bunch of instances of Movies 
        puts <<~HEREDOC
             1. What Men Want - $9.99 - Available!
             2. The Upside - $9.99 - Avilable! 
        HEREDOC

        movie_1 = self.new
        movie_1.name = "What Men Want"
        movie_1.price = 
        movie_1.availability = true
        movie_1.url = "https://www.fandango.com/"


        movie_2 = self.new
        movie_2.name = "The Upside"
        movie_2.price = 
        movie_2.availability = true
        movie_2.url = "https://www.fandango.com/"

        [movie_1, movie_2]

    end 
end     