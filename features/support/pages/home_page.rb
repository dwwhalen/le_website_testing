class HomePage < BasePage
  include PageObject

  page_url 'http://leadingedje.com'
  footer(:main_section, id: 'page-footer')

end
