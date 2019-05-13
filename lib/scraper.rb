require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    scraped_students = []
doc = Nokogiri::HTML(open(index_url))
doc.css(".student-card").each do |student|
  name = student.css("h4").text
  location = student.css("p").text
  url = student.css("a").attribute("href").value
  student = {name:name, location:location, profile_url:url }
  scraped_students.push(student)
end
scraped_students


  end

  def self.scrape_profile_page(profile_url)

  end

end
