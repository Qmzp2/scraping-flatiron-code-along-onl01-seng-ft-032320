require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def print_courses #calls on .make_courses and then iterates over all of the courses that get created to puts out a list of course offerings.
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
  def get_page #responsible for using nokogiri and open-uri to grab the entire HTML document from the web page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    
    binding.pry
  end
  
  def get_courses #responsible for using a CSS selector to grab all of the HTML elements that contain a course.
  end
  
  def make_courses #responsible for actually instantiating Course objects and giving each course object the correct title, schedule and description attribute that we scraped from the page.
  end
  
 

end



Scraper.new.get_page