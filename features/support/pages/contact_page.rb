class ContactPage < BasePage
  include PageObject

  page_url 'http://leadingedje.com/contact'
  article(:main_section, id: 'contact')

end
