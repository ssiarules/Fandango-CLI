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

        # here doc - https://infinum.co/the-capsized-eight/multiline-strings-ruby-2-3-0-the-squiggly-heredoc
        # puts <<~HEREDOC
        # 1. Men & Black!
        # 2. Why did I get married?
        # HEREDOC
    end 


    def menu
        input = nil 
        while input != "exit"
        puts "Enter the number of the movie you'd would like to see or type list to see the movies again or type exit:"
        input = gets.strip.downcase
        case input 
        when "1"
            puts "More info on movie 1..."
        when "2"
            puts "More info on movie 2..." 
        when "list"
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