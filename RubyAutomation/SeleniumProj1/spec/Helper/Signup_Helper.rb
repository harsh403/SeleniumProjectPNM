require 'rspec'
require 'test/unit/assertions'
require 'test/unit'
include GenericHelper

module SignHelper


  def Signup (email='abc@abc.com',pwd='password1',zip='23456')
    #Step 1 - Enter username
    wait_true(20) {@driver.find_element(:id, 'input-email_or_phone').displayed? }
    @driver.find_element(:id, "input-email_or_phone").send_keys(email)

    #Step 2 - Enter Password
    wait_true(20) {@driver.find_element(:id, 'input-password').displayed? }
    @driver.find_element(:id, 'input-password').send_keys(pwd)

    #Step 3 - Enter Zip Code
    wait_true(20) {@driver.find_element(:id, 'input-postalcode').displayed? }
    @driver.find_element(:id, 'input-postalcode').send_keys(zip)

    #Step 4 - Click Submit Button
    wait_true(20) {@driver.find_element(:id, 'button-sign-up').displayed? }
    @driver.find_element(:id, 'button-sign-up').click

  end

  def verifySuccess()


    wait_true(20) {@driver.find_element(:id, 'off-canvas-menu-settings').displayed? }
      if(@driver.find_element(:id, 'off-canvas-menu-landing').text.should eq "Home")
      return true
    else
      return false
    end

  end

end