#Our CLI Controller 

class Fandango::CLI
    
    def call 
      puts "Welcome to Fandango! You just made it for the last movie of the evening!"
        list_movies
        menu 
        goodbye
    end 


    def list_movies
      
        @movies = Fandango::Movie.today
        @movies.each.with_index(1) do |movie, i|
            puts "#{i}. #{movie.name}"
        end 
    end 


    def menu
        input = nil 
        while input != "exit"
        puts "Enter the number of the movie you'd would like to see or type list to see the movies again or type exit:"
        input = gets.strip.downcase

        if input.to_i > 0 
        the_movie =  @movies[input.to_i-1]
        puts "#{the_movie.name}"
        elsif input == "list"
            list_movies
        elsif input != "exit"
          puts "Invalid response."
    else 
        puts "Not sure what you want, type list or exit."
    end 
  end 
end  

    def goodbye
        puts "See you tomorrow for a list of new movies!!"
    end 
end  