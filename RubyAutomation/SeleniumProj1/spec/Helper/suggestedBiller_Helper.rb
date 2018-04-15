module SuggestedBiller

  def selectSuggestedBiller(biller_name)

    sleep 5
    @driver.find_elements(:css, 'div.list-item-title').each do |list_item|
      puts "(#{biller_name.to_s}) == (#{list_item.text})"
      if list_item.text == biller_name
        puts "biller found #{biller_name}"
        list_item.click
        #puts list_item.text

        break
      end
    end
  end

  def clickAddAccount()
    sleep 10
    wait_true(30) {@driver.find_element(:css, 'button.primary span.inner').displayed? }
    @driver.find_element(:css, 'button.primary span.inner').click()
  end


end