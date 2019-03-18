require_relative "./version"
require 'nokogiri'
require 'open-uri'
require 'pry'
class Fandango::Movies 

attr_accessor :name

  def self.showings
    movies = []
    
    movies << self.scrape_movies
  end 

    def self.scrape_movies 
         doc = Nokogiri::HTML(open("https://www.fandango.com/"))
        
           movies = self.new
           movies.name = doc.search("a.heading-style-1.heading-size-s.heading__movie-carousel")[0...3]
           movies.name.each do |movie|
            puts movie.text.strip
            #puts movie.attr("href")
           
           movies 
   #binding.pry
          end
       end 
    end 
