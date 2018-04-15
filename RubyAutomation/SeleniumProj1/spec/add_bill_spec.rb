require 'rspec'
include GenericHelper
include SuggestedBiller
include LoginHelper

describe 'Add Bill' do

  it 'should allow user to successfully login to main page' do

    #Step 1 - Click on "Log In" link text. Wait till Button is displayed. Then Login to the portal with existing Username/password
    wait_true(20) {@driver.find_element(:id, 'button-sign-up').displayed? }
    if @driver.find_element(:link_text, "Log in.")
      @driver.find_element(:link_text,"Log in.").click()
      wait_true(20) {@driver.find_element(:id, 'button-login').displayed? }

      @driver.find_element(:id, "input-email").send_keys("htest@abc.com")
      @driver.find_element(:id, 'input-password').send_keys('password1')
      @driver.find_element(:id, 'button-login').click

      wait_true(20) {@driver.find_elemetn(:id, 'off-canvas-menu-settings').displayed? }
      @driver.find_element(:id, 'off-canvas-menu-landing').text.should eq "Home"
    end


  end

  it 'should allow user to add bill and show up on dashboard' do

    email = 'htest@abc.com'
    login(email)

    wait_true(20) {@driver.find_element(:id, 'off-canvas-menu-open-order-list').displayed? }
    @driver.find_element(:id, 'off-canvas-menu-open-order-list').click()

    wait_true(20) {@driver.find_element(:id, 'toggle-make-payment').displayed? }
    @driver.find_element(:id, 'toggle-make-payment').click()
    #sleep 5
    selectSuggestedBiller("GEICO")
    clickAddAccount


    wait_true(20) {@driver.find_element(:id, 'input-customer_identifier').displayed? }
    acc_num = random_account
    @driver.find_element(:id, 'input-customer_identifier').send_keys(acc_num)

    @driver.find_element(:id, 'input-confirm_customer_identifier').send_keys(acc_num)

    @driver.find_element(:id, 'input-customer_first_name').send_keys("Cus_First_Nm")
    @driver.find_element(:id, 'input-customer_last_name').send_keys("Cus_Last_Nm")
    @driver.find_element(:css, 'button.primary span.inner').click

    wait_true(20) {@driver.find_element(:css, 'button.primary span.inner').displayed? }
    @driver.find_element(:css, 'button.primary span.inner').click

      #wait_true(20) {@driver.find_element(:class, 'ng-pristine ng-valid').displayed? }
      #@driver.find_element(:class, 'ng-pristine ng-valid').send_keys('AT&T')
    #wait_true(20) {@driver.find_element(By.cssSelector, 'list-item-title.ng-binding').displayed? }
     # @driver.find_element(:class, 'list-item-title.ng-binding').text.equal? "AT&T".click()
      #wait_true(20) {@driver.find_element(:css, '.pnm-list .list-item-title').displayed? }
      # Explore CSS pattern, create a new method - ADD BILLER MODULE MA JOVA NU







      sleep 10




  end

  it 'should allow user to add multiple bills ' do

  end

  it "should allow user to see pay other bills ad" do

  end
end