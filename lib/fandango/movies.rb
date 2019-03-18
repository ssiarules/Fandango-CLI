require_relative "./version"
require 'nokogiri'
require 'open-uri'
require 'pry'
class Fandango::Movie 

    attr_accessor :name

     def self.today
       self.scrape_movies
     end 

    def self.scrape_movies
       movies = []
    
       movies  << self.scrape_fandango
    
       movies 
    end 

    def self.scrape_fandango
      doc = Nokogiri::HTML(open("https://www.fandango.com/"))
     
        
        movie = self.new 
        movie.name = doc.search("a.heading-style-1.heading-size-s.heading__movie-carousel").text
        
        movie  
   
   #binding.pry
  end
end 

