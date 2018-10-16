class BasePage
  include PageObject

  link(:go_to_home_link, id: 'logo')
  link(:join_us_link, text: 'JOIN US')
  link(:ideas_link, text: 'IDEAS')
  link(:contact_link, text: 'CONTACT')
  link(:events_link, id: 'nextEvent')

  def initialize_page
    wait_until do
      main_section_element.present?
    end
  end

  def page_title
    return @browser.title
  end

end