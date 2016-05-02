# Fill the test database with clients
10.times do
  company_name = Faker::Company.name
  contact_first_name = Faker::Name.first_name
  contact_last_name = Faker::Name.last_name
  contact_email = Faker::Internet.email(contact_first_name)
  contact_phone_number = Faker::PhoneNumber.phone_number

  Client.create(company_name: company_name,
    contact_name: contact_first_name + ' ' + contact_last_name,
    contact_email: contact_email,
    contact_phone: contact_phone_number)
end