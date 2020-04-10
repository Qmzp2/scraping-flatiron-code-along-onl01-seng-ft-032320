require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def print_courses
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
    
  end
  
  def get_courses #responsible for using a CSS selector to grab all of the HTML elements that contain a course.
  end
  
  def make_courses #responsible for actually instantiating Course objects and giving each course object the correct title, schedule and description attribute that we scraped from the page.
  end
  
 

end



