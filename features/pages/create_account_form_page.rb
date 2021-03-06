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

  def initialize
    @first_name = Faker::Name.first_name
    @last_name = Faker::Name.last_name
  end

  def create_account
    personal_information
    addres_information
    submit.click
  end

  private

  def personal_information
    wait_load_form
    title.click
    first_name.set(@first_name)
    last_name.set(@last_name)
    password.set('teste@123')
    day_of_birth.select(22)
    month_of_birth.select('May')
    year_of_birth.select(1987)
  end

  def addres_information
    address_first_name(@first_name)
    address_last_name(@last_name)
    address.set(Faker::Address.street_address)
    city.set(Faker::Address.city)
    state.select('Colorado')
    zip_code.set(34_658)
    phone_mobile.set(3_464_646)
  end

  def wait_load_form
    wait_until_day_of_birth_visible
    wait_until_month_of_birth_visible
    wait_until_year_of_birth_visible
  end
end
