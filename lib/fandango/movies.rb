require_relative "./version"
require 'nokogiri'
require 'open-uri'
require 'pry'
class Fandango::Movies 

attr_accessor :name, :price, :availability, :url 

    def self.showings
       # I should return a bunch of instances of Movies 
       #Scrape data and return movies based on data
    
        movie_1 = self.new
        movie_1.name = "What Men Want"
        movie_1.price = $15
        movie_1.availability = true
        movie_1.url = "https://www.fandango.com/"


        movie_2 = self.new
        movie_2.name = "The Upside"
        movie_2.price = $15
        movie_2.availability = true
        movie_2.url = "https://www.fandango.com/"

        [movie_1, movie_2]

    end 

    def self.scrape_movies 
        movies = []
        #go to Fandango.com, find the movies
        #extract the properties
        #instantiate a deal 
        doc = Nokogiri::HTML(open("https://www.fandango.com/"))
        names = doc.search("a.heading-style-1.heading-size-s.heading__movie-carousel")
        names.each do |movie|
          puts movie.text
          #puts movie.attr("href")
        end
        binding.pry
    end 
end  
Fandango::Movies.scrape_movies