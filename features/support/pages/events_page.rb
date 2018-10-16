class EventsPage < BasePage
  include PageObject

  page_url 'http://leadingedje.com/events'
  article(:main_section, id: 'events')

end
