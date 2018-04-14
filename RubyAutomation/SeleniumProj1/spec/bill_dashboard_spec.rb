require 'rspec'
include GenericHelper

describe 'Bills dashboard : ' do

  it 'should land on pre-dashboard on first login' do
    #Step 1 - Click on "Log In" link text. Wait till Button is displayed. Then Login to the portal with existing Username/password
    wait_true(20) {@driver.find_element(:id, 'button-sign-up').displayed? }
    wait_true(20) {@driver.find_element(:link_text, "Log in.").displayed? }
      @driver.find_element(:link_text,"Log in.").click()
      wait_true(20) {@driver.find_element(:id, 'button-login').displayed? }

      @driver.find_element(:id, "input-email").send_keys("htest@abc.com")
      @driver.find_element(:id, 'input-password').send_keys('password1')
      @driver.find_element(:id, 'button-login').click

      wait_true(20) {@driver.find_element(:id, 'off-canvas-menu-settings').displayed? }
      @driver.find_element(:id, 'off-canvas-menu-landing').text.should eq "Home"


  end

  it 'should show pre-dashbard text and pay-bill button ' do
    #Step 1 - Click on "Log In" link text. Wait till Button is displayed. Then Login to the portal with existing Username/password
    wait_true(20) {@driver.find_element(:id, 'button-sign-up').displayed? }
    wait_true(20) {@driver.find_element(:link_text, "Log in.").displayed? }
      @driver.find_element(:link_text,"Log in.").click()
      wait_true(20) {@driver.find_element(:id, 'button-login').displayed? }

      @driver.find_element(:id, "input-email").send_keys("htest@abc.com")
      @driver.find_element(:id, 'input-password').send_keys('password1')
      @driver.find_element(:id, 'button-login').click

      wait_true(20) {@driver.find_element(:id, 'btn-add-bill').displayed? }
      @driver.find_element(:id, 'btn-add-bill').text.should eq "PAY A BILL"

  end

  it 'should allow user to take tour of app while on pre-dashboard' do
    #Step 1 - Click on "Log In" link text. Wait till Button is displayed. Then Login to the portal with existing Username/password
    wait_true(20) {@driver.find_element(:id, 'button-sign-up').displayed? }
    wait_true(20) {@driver.find_element(:link_text, "Log in.").displayed? }
    @driver.find_element(:link_text,"Log in.").click()
    wait_true(20) {@driver.find_element(:id, 'button-login').displayed? }

    @driver.find_element(:id, "input-email").send_keys("htest@abc.com")
    @driver.find_element(:id, 'input-password').send_keys('password1')
    @driver.find_element(:id, 'button-login').click

    wait_true(20) {@driver.find_element(:id, 'btn-take-tour').displayed? }
    @driver.find_element(:id, 'btn-take-tour').text.should eq "Take the tour"
  end

  it "should allow user to traverse between different menu options " do
    #Step 1 - Click on "Log In" link text. Wait till Button is displayed. Then Login to the portal with existing Username/password
    wait_true(20) {@driver.find_element(:id, 'button-sign-up').displayed? }
    wait_true(20) {@driver.find_element(:link_text, "Log in.").displayed? }
    @driver.find_element(:link_text,"Log in.").click()
    wait_true(20) {@driver.find_element(:id, 'button-login').displayed? }

    @driver.find_element(:id, "input-email").send_keys("htest@abc.com")
    @driver.find_element(:id, 'input-password').send_keys('password1')
    @driver.find_element(:id, 'button-login').click

    wait_true(20) {@driver.find_element(:id, 'off-canvas-menu-settings').displayed? }
    @driver.find_element(:id, 'off-canvas-menu-settings').click()
    #@driver.find_element(:id, 'btn-take-tour').text.should eq "Take the tour"

    @driver.find_element(:id, 'off-canvas-menu-open-order-list').click()

    @driver.find_element(:id, 'off-canvas-menu-history').click()

    @driver.find_element(:id, 'off-canvas-menu-locations-list').click()

    @driver.find_element(:id, 'off-canvas-menu-settings').click()
    #@driver.find_element(:id, 'btn-take-tour').text.should eq "Take the tour"
sleep 10


  end

  it "should allow user to select and traverse settings option from dashboard" do

    #Step 1 - Click on "Log In" link text. Wait till Button is displayed. Then Login to the portal with existing Username/password
    wait_true(20) {@driver.find_element(:id, 'button-sign-up').displayed? }
    wait_true(20) {@driver.find_element(:link_text, "Log in.").displayed? }
    @driver.find_element(:link_text,"Log in.").click()
    wait_true(20) {@driver.find_element(:id, 'button-login').displayed? }

    @driver.find_element(:id, "input-email").send_keys("htest@abc.com")
    @driver.find_element(:id, 'input-password').send_keys('password1')
    @driver.find_element(:id, 'button-login').click

    wait_true(20) {@driver.find_element(:id, 'off-canvas-menu-settings').displayed? }
    @driver.find_element(:id, 'off-canvas-menu-settings').click()

    wait_true(20) {@driver.find_element(:id, 'signout-button').displayed? }
    @driver.find_element(:id, 'change-language-settings').text.start_with? "Cambiar a Español"
    @driver.find_element(:id, 'change-pw-settings').text.start_with? "roberto"
    #@driver.find_element(:id, 'mail-settings').href should eq "mailto:webappsupport@paynearme.com?subject=Web%20Consumer%20App%20Feedback"


  end


end