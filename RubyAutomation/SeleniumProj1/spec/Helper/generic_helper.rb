module GenericHelper

  def wait_true(no_of_sec, &block)
    wait = Selenium::WebDriver::Wait.new(:timeout => no_of_sec)
    wait.until &block
  end

  def random_email
    i = rand(300)
    rand_email = "htest#{rand(300)}@abc.com"
    return rand_email
  end

  def random_account
    rand_acc = rand(100000...1000000000)
    return rand_acc
  end

end