class Fandango::CLI
    
    def call 
        puts "Welcome to Fandango! Any night is a movie night!"
       
        list_movies
        menu 
        goodbye
    end 


    def list_movies
       puts "Below is available movies for tonight!"
        @showings = Fandango::Movies.showings
        @showings.each.with_index(1) do |movies, i|
            puts "#{i}. #{movies.text}"
        end 
    end 


    def menu
        input = nil 
        while input != "exit"
        puts "Enter the number of the movie you'd would like to see or type list to see the movies again or type exit:"
        input = gets.strip.downcase

        if input.to_i > 0 
        the_movies =  @showings[input.to_i-1]
        puts "#{the_movies.text}"
        elsif input == "list"
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
