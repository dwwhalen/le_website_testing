class JoinUsPage < BasePage
  include PageObject

  page_url 'http://leadingedje.com/join-the-fun'
  article(:main_section, id: 'join-us')

end
