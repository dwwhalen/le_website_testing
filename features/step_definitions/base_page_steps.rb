When(/^I visit the Leading EDJE Home page$/) do
  visit HomePage
end

And(/^the (Benefits|Openings|Real|Fun|Geeks) section is displayed$/) do |section|
  expect(@browser.article(id: section.downcase)).to exist
end

Then(/^the (Home|Ideas|Join Us|Contact|Events) page is displayed$/) do |page|

  case page
  when 'Home'
    expect(on(HomePage).page_title).to eq 'Leading EDJE | Home'
  when 'Ideas'
    expect(on(IdeasPage).page_title).to eq 'Leading EDJE | Home'
  when 'Join Us'
    expect(on(JoinUsPage).page_title).to eq 'Leading EDJE | Home'
  when 'Contact'
    expect(on(ContactPage).page_title).to eq 'Leading EDJE | Home'
  when 'Events'
    expect(on(EventsPage).page_title).to eq 'Leading EDJE | Home'
  end
end

And(/^I click the ([^"]*) link$/) do |link_to_click|
  case link_to_click
  when 'Home'
    on(HomePage).go_to_home_link_element.click
  when 'Ideas'
    on(HomePage).ideas_link_element.click
  when 'Join Us'
    on(HomePage).join_us_link_element.click
  when 'Contact'
    on(HomePage).contact_link_element.click
  when 'Events'
    on(HomePage).events_link_element.click
  else
    fail(ArgumentError.new("Unexpected link to click: #{link_to_click}"))
  end
end

And(/^the page contains text "([^"]*)"$/) do |expected_text|
  expect(on(IdeasPage).main_section_element.text).to include expected_text
end