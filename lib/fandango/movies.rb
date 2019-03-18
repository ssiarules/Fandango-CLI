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
    
       movies  << self.scrape_fandango_1
       movies  << self.scrape_fandango_2
       
    
       movies 
    end 

    def self.scrape_fandango_1
      doc = Nokogiri::HTML(open("https://www.fandango.com/"))
     
        movie = self.new 
        movie.name = doc.search("a.heading-style-1.heading-size-s.heading__movie-carousel")[0].text
        
        movie 
      end 
   
   def self.scrape_fandango_2
      doc = Nokogiri::HTML(open("https://www.fandango.com/"))
     
        
        movie = self.new 
        movie.name = doc.search("a.heading-style-1.heading-size-s.heading__movie-carousel")[1].text
        
        movie  
        end
end 

