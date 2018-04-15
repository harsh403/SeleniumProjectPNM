module LoginHelper


  def login(email="htest@abc.com",pwd="password1")
    wait_true(20) {@driver.find_element(:id, 'button-sign-up').displayed? }
    wait_true(20) {@driver.find_element(:link_text, "Log in.").displayed? }
    @driver.find_element(:link_text,"Log in.").click()
    wait_true(20) {@driver.find_element(:id, 'button-login').displayed? }
    @driver.find_element(:id, "input-email").send_keys(email)
    @driver.find_element(:id, 'input-password').send_keys(pwd)
    @driver.find_element(:id, 'button-login').click
  end


end