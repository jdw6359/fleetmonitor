# Get the client ids of all clients in the database
client_ids = Client.all.pluck(:id)

# Fill the database with device records
30.times do
  serial_number = SecureRandom.urlsafe_base64(48)
  Device.create(client_id: client_ids.sample, serial_number: serial_number)
end