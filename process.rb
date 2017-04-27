require_relative './parsers.rb'

Separator_String = "---------"

def display_contacts(contacts_array)
  contacts_array.each_with_index do |contact, index|
    puts "Contact #{index + 1}"      
    puts Separator_String
    puts contact
  end
end

File.open(Contacts_Filename, 'r') do |f|
  contacts_headers = parse_contacts_headers(f.readline)
  contacts_data = parse_contacts_data(f.readlines)
  
  contacts_array = create_contacts_array(contacts_headers, contacts_data)
  display_contacts(contacts_array)
end

