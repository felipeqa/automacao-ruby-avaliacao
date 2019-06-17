class CreateAccountPage < SitePrism::Page

  element :title, 'label[for="id_gender1"]'
  element :first_name, '#customer_firstname'
  element :last_name, '#customer_lastname'
  element :password, '#passwd'
  element :day_of_birth, '#uniform-days'
  element :month_of_birth, '#uniform-months'
  element :year_of_birth, '#uniform-years'
  element :address_first_name, '#firstname'
  element :address_last_name, '#lastname'
  element :address, '#address1'
  element :city, '#city'
  element :state, '#uniform-id_state'
  element :zip_code, '#postcode'
  element :phone_mobile, '#phone_mobile'
  element :submit, '#submitAccount'

  def create_account
    wait_load_form
    title.click
    first_name_data = Faker::Name.first_name
    last_name_data = Faker::Name.last_name
    first_name.set(first_name_data)
    last_name.set(last_name_data)
    password.set('teste@123')
    day_of_birth.select(22)
    month_of_birth.select('May')
    year_of_birth.select(1987)
    address_first_name(first_name_data)
    address_last_name(last_name_data)
    address.set(Faker::Address.street_address)
    city.set(Faker::Address.city)
    state.select('Colorado')
    zip_code.set(34658)
    phone_mobile.set(3464646)
    submit.click
  end

  private

  def wait_load_form
    wait_until_day_of_birth_visible
    wait_until_month_of_birth_visible
    wait_until_year_of_birth_visible
  end
end
