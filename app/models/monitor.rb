class Monitor
  include Cequel::Record

  key :subdomain, :text
  column :status, :text
end