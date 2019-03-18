require_relative "./version"
require 'nokogiri'
require 'open-uri'
require 'pry'
class Fandango::Movies 

attr_accessor :name


 def self.showings
    doc = Nokogiri::HTML(open("https://www.fandango.com/"))
    # movies = []
    # movies << self.scrape_movies
  end 

    def self.scrape_movies 
         
        self.showings.each do |name|
          name = doc.search("a.heading-style-1.heading-size-s.heading__movie-carousel").text.strip
           
           movies.new(name)
   
         end
       end 
    end 
