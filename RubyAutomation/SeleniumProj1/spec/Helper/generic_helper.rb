module GenericHelper

  def wait_true(no_of_sec, &block)
    wait = Selenium::WebDriver::Wait.new(:timeout => no_of_sec)
    wait.until &block
  end

  def random_email
    i = rand(300)
  return i
  end


end