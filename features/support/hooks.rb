Before do |scenario|
  @browser ||= Watir::Browser.new :firefox
end

After do |scenario|
  # if (scenario.failed?)
  #   encoded_img = @browser.driver.screenshot_as(:base64)
  #   embed("data:image/png;base64,#{encoded_img}",'image/png')
  # end
  # if @browser.exists?
  @browser.close
  # end

end