require 'rspec'
include GenericHelper

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

    #Step 1 - Click on "Log In" link text. Wait till Button is displayed. Then Login to the portal with existing Username/password
      wait_true(20) {@driver.find_element(:id, 'button-sign-up').displayed? }
      wait_true(20) {@driver.find_element(:link_text, "Log in.").displayed? }
      @driver.find_element(:link_text,"Log in.").click()
      wait_true(20) {@driver.find_element(:id, 'button-login').displayed? }

      @driver.find_element(:id, "input-email").send_keys("htest@abc.com")
      @driver.find_element(:id, 'input-password').send_keys('password1')
      @driver.find_element(:id, 'button-login').click

        #wait_true(20) {@driver.find_element(:id, 'off-canvas-menu-settings').displayed? }
        # @driver.find_element(:id, 'off-canvas-menu-landing').text.should eq "Home"

    wait_true(20) {@driver.find_element(:id, 'off-canvas-menu-open-order-list').displayed? }
    @driver.find_element(:id, 'off-canvas-menu-open-order-list').click()

    wait_true(20) {@driver.find_element(:id, 'toggle-make-payment').displayed? }
    @driver.find_element(:id, 'toggle-make-payment').click()

      #wait_true(20) {@driver.find_element(:class, 'ng-pristine ng-valid').displayed? }
      #@driver.find_element(:class, 'ng-pristine ng-valid').send_keys('AT&T')
    #wait_true(20) {@driver.find_element(By.cssSelector, 'list-item-title.ng-binding').displayed? }
     # @driver.find_element(:class, 'list-item-title.ng-binding').text.equal? "AT&T".click()
      #wait_true(20) {@driver.find_element(:css, '.pnm-list .list-item-title').displayed? }
      q = @driver.page_source
      if q.include?('AT&T')
        puts "AT&T found"
      end






      sleep 10




  end

  it 'should allow user to add multiple bills ' do

  end

  it "should allow user to see pay other bills ad" do

  end
end