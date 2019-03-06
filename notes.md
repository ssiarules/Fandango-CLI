How to Build a CLI Gem 

Plan your gem, imagine your interface
Start with the project structure - Google 
Start with the entry point - The file run 
Force that to build the CLI interface
Stub out the interface 
Discover objects 
Program 

Describing CLI functionality! 
1. Execution file is listed in bin > fandango. This is file people are running.
    anything that needs my environment can load it via require './lib/fandango'
2. The fandango bin file creates (Fandango::CLI.new.call) a new instance of my controller CLI, it calls the call method on it which than begins the lib/cli.rb file. 
            lib/cli.b 
            def call 
                puts "Welcome to Fandango! Any night is a movie night!"
                list_movies
                menu 
                goodbye
             end 

CLI PORTFOLIO PROJECT 

Scraping website - www.Fandango.com


User location (current location)
locate nearby movie theatre 
User select nearby movie theatre
The nearby movie theatre will be numbered 
The user will select a number of the movie theatre that is closest to them. 
What’s movies are in theaters now 
List of movies 
Movies will be numbered - User will select a number of the movie they would like to see
What’s movies are coming out 
Only will show movies coming out 
Select movie 
Movies will be numbered - User will select a number of the movie they would like to see
Date of viewing the movie 
A list of the dates of the movie they selected 
Dates will be numbered - User will select a number for the date of the movie they would like to see
Time of viewing the movie 
A list of the times of the date they selected to see the movie 
Dates will be numbered - User will select a number for the time of the movie they would like to see.
Confirmation 
Thank you for your purchase “See you tonight at “Location” for your viewing of “name of the movie” starting at ‘time” on “Date”

Advanced 

Select to view the cast 
Select to know about the movie. 



