require_relative "./version"
require 'nokogiri'
require 'open-uri'
require 'pry'
class Fandango::Movie 

attr_accessor :name, :price, :availability, :url 

    def self.showings
       self.scrape_movies_data
        #[movie_1, movie_2]
    end 
    
    def self.scrape_movies_data
       movies = []
       
       movies << self.scrape_movies
       
       movies 
      
    end 

    def self.scrape_movies 
       
        doc = Nokogiri::HTML(open("https://www.fandango.com/"))
        doc1 = Nokogiri::HTML(open("https://tickets.fandango.com/transaction/ticketing/express/ticketboxoffice.aspx?row_count=266828305&tid=AAWTJ&sdate=2019-03-17+16:45&mid=188283&from=mov_det_showtimes"))
        
            
            movie = self.new
            movie.name = doc.search("a.heading-style-1.heading-size-s.heading__movie-carousel")[0...2]
            movie.name.each do |movie|
                 puts movie.text
                 puts movie.attr("href") #url 
            movie.price = doc1.search("td.pricePerTicket")[0].text 
            movie.availability = true 
            
            movie
   binding.pry
          end
       
    end 
end 
