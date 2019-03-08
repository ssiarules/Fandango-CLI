#Our CLI Controller 

class Fandango::CLI

    #@showings = Fandango::Movies.showings
    
    def call 
        puts "Welcome to Fandango! Any night is a movie night!"
        list_movies
        menu 
        goodbye
    end 


    def list_movies
        @showings = Fandango::Movies.showings
        @showings.each.with_index(1) do |deal, i|
            puts "#{i}. #{movies.name} - #{movies.price} - #{movies.availability}"
        end 
    end 


    def menu
        input = nil 
        while input != "exit"
        puts "Enter the number of the movie you'd would like to see or type list to see the movies again or type exit:"
        input = gets.strip.downcase

        if input.to_i > 0 
        the_movies =  @movies[iput.to_i-1]
        puts "#{the_movies.name} - #{the_movies.price} - #{the_movies.availability}"
        elsif inputs == "list"
            list_movies
    else 
        puts "Not sure what you want, type list or exit."
    end 
  end 
end  

    def goodbye
        puts "See you tomorrow for a list of new movies!!"
    end 
end  