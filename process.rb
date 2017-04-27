require_relative './parsers.rb'


File.open(Contacts_Filename, 'r') do |f|
  contacts_headers = parse_contacts_headers(f.readline)
  contacts_data = parse_contacts_data(f.readlines)
  
  contacts_array = create_contacts_array(contacts_headers, contacts_data)
end

