require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get "http://google.com"
wait = Selenium::WebDriver::Wait.new(:timeout => 20)

if driver.find_element(:link_text, 'Settings')
   puts "Settings Link exists"
else
   puts "Link doesn't exist"
end

element = driver.find_element :name => "q"

element.send_keys "Cheese!"
element.submit


wait.until {driver.title.downcase.start_with? "cheese!"}
puts "Page title is #{driver.title}"


can_span = driver.find_element :class => "Q8LRLc"

wait.until {can_span.text.eql? "Canada"}
puts "Can_span value #{can_span.text}"

if driver.find_element(:link_text, "Privacy")
  driver.find_element(:link_text,"Privacy").click()
  wait.until {driver.title.downcase.start_with? "privacy policy"}
  puts "Page title is #{driver.title}"
end

driver.navigate().to("http://www.calgary.ca")
puts "Opened Calgary.ca website"




driver.quit