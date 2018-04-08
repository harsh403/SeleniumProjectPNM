require 'rspec'
include GenericHelper

describe 'Signup : ' do

  it 'Should allow user to Signup' do
    #Step 1 - Enter username
    wait_true(20) {@driver.find_element(:id, 'input-email_or_phone').displayed? }
    @driver.find_element(:id, "input-email_or_phone").send_keys("htest#{i = random_email}@abc.com")

    #Step 2 - Enter Password
    wait_true(20) {@driver.find_element(:id, 'input-password').displayed? }
    @driver.find_element(:id, 'input-password').send_keys('12dcbfwdwd')

    #Step 3 - Enter Zip Code
    wait_true(20) {@driver.find_element(:id, 'input-postalcode').displayed? }
    @driver.find_element(:id, 'input-postalcode').send_keys('23405')

    #Step 4 - Click Submit Button
    wait_true(20) {@driver.find_element(:id, 'button-sign-up').displayed? }
    @driver.find_element(:id, 'button-sign-up').click


    sleep 10
  end


  it 'Should throw error on wrong email format - @ missing' do

    #Step 5 - email without @
    wait_true(20) {element = @driver.find_element(:id, 'input-email_or_phone').displayed? }
    @driver.find_element(:id, 'input-email_or_phone').send_keys("htest#{i = random_email}.com")
    @driver.find_element(:id, 'button-sign-up').click
    #if(@driver.find_element(:id, 'error-email_or_phone').displayed?)
    @driver.find_element(:id, 'error-email_or_phone').text.should eq "Email or phone number is not valid."
    #  puts "Email not valid"
    #end




  end

  it 'Should throw error on wrong email format - . missing after @' do

    #Step 6 - email without . after @
    wait_true(20) {element = @driver.find_element(:id, 'input-email_or_phone').displayed? }
    @driver.find_element(:id, 'input-email_or_phone').send_keys("htest#{i = random_email}@abc2")
    @driver.find_element(:id, 'button-sign-up').click
    #if(@driver.find_element(:id, 'error-email_or_phone').displayed?)
    @driver.find_element(:id, 'error-email_or_phone').text.should eq "Email or phone number is not valid."
    #  puts "Email not valid"
    #end
    #
    sleep 5
  end

  it 'Should throw error on wrong email format - without .@ and domain info' do

    #Step 6 - email without . after @
    wait_true(20) {element = @driver.find_element(:id, 'input-email_or_phone').displayed? }
    @driver.find_element(:id, 'input-email_or_phone').send_keys("htest#{i = random_email}")
    @driver.find_element(:id, 'button-sign-up').click
    #if(@driver.find_element(:id, 'error-email_or_phone').displayed?)
    @driver.find_element(:id, 'error-email_or_phone').text.should eq "Email or phone number is not valid."
    #  puts "Email not valid"
    #end
    #
    sleep 5
  end

  it 'Should throw error on wrong zip code' do
    #Step 7 - Wrong zip code
    wait_true(20) {@driver.find_element(:id, 'input-postalcode').displayed? }
    @driver.find_element(:id, 'input-postalcode').send_keys('2405')
    @driver.find_element(:id, 'button-sign-up').click
    #if(@driver.find_element(:id, 'error-postalcode').displayed?)
      @driver.find_element(:id, 'error-postalcode').text.should eq "Zip code is not valid"
      #puts "Zip code not valid"
    #end

    sleep 5
  end

  it 'Should check password length - less than 8 characters' do
    wait_true(20) {@driver.find_element(:id, 'input-password').displayed? }
    @driver.find_element(:id, 'input-password').send_keys('1d')
    @driver.find_element(:id, 'button-sign-up').click
    #if(@driver.find_element(:id, 'error-password').displayed?)
      @driver.find_element(:id, 'error-password').text.should eq "Password must be at least 8 characters long with at least one letter AND a number or symbol."
    #  puts "Password not valid"
    #end

  end

  it 'Should check password length - less than without any numbers' do
    wait_true(20) {@driver.find_element(:id, 'input-password').displayed? }
    @driver.find_element(:id, 'input-password').send_keys('abcdefghi')
    @driver.find_element(:id, 'button-sign-up').click
    #if(@driver.find_element(:id, 'error-password').displayed?)
    @driver.find_element(:id, 'error-password').text.should eq "Password must be at least 8 characters long with at least one letter AND a number or symbol."
    #  puts "Password not valid"
    #end
  sleep 5
  end

end