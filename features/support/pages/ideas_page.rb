class IdeasPage < BasePage
  include PageObject

  page_url 'http://leadingedje.com/ideas'
  article(:main_section, id: 'ideas')

end
