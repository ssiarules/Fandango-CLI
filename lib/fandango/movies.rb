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
        doc1 = Nokogiri::HTML(open("https://tickets.fandango.com/transaction/ticketing/express/ticketboxoffice.aspx?row_count=266828305&tid=AAWTJ&sdate=2019-03-17+16:45&mid=188283&from=mov_det_showtimes"))
        name = doc.search("a.heading-style-1.heading-size-s.heading__movie-carousel")[0...2]
          name.each do |movie|
            puts movie.text
            puts movie.attr("href")
            price = doc1.search("td.pricePerTicket")[0].text 
   binding.pry
          end
       
    end 
end 
Fandango::Movies.scrape_movies
