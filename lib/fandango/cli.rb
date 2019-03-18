class Fandango::CLI
    
    def call 
      Fandango::Movies.scrape_movies
        welcome 
        list_movies
        menu 
        goodbye
    end 
    
    def welcome
       puts "Welcome to Fandango! Any night is a movie night!"
    end 


    def list_movies
      Movie.all.each.with_index(1) do |movie, i|
        puts "#{i}. #{movie.name}"
    end
  end 


    def menu
        input = nil 
        while input != "exit"
        puts "Enter the number of the movie you'd would like to see or, type list to see the movies again or type exit:"
        input = gets.strip.downcase

        if input.to_i > 0 && input.to_i < 10
        the_movies =  list_movies[input.to_i-1]
        puts "#{the_movies.name}"
        elsif input == "list"
            list_movies
        elsif input != "exit"
          puts "Invalid response."
          
          binding.pry
    else 
        puts "Not sure what you want, type list or exit."
      end 
  end 
end  

    def goodbye
        puts "See you tomorrow for a list of new movies!!"
    end 
  end 
