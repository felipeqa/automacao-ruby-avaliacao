class Authentication < SitePrism::Page

  element :email, '#email_create'
  element :create_an_acount, '#SubmitCreate'

  def go_to_form_create_account(valid_email)
    email.set(valid_email)
    create_an_acount.click
  end

end
