require_relative './contact.rb'

Contacts_Filename = 'contacts.txt'
Field_Not_Found = -1

def parse_contacts_headers(line)
  line.strip.split('|') 
end

def parse_contacts_data(lines)
  data = []
  lines.each do |contact_line|
    data << contact_line.strip.split('|')    
  end
  
  data
end

def find_field_index(header, field_name)
  header.map(&:downcase).index(field_name) || Field_Not_Found
end

def get_field_data(contact_raw, index)
  index === Field_Not_Found ? "" :
    contact_raw[index]
end

def create_contacts_array(header, contacts_raw)
  name_index = find_field_index(header, "name")
  address_1_index = find_field_index(header, "address_1")
  city_index = find_field_index(header, "city")
  state_index = find_field_index(header, "state")
  postal_code_index = find_field_index(header, "postal_code")
  telephone_number_index = find_field_index(header, "telephone_number")
  
  contacts = []
  contacts_raw.each do |contact|
    name = get_field_data(contact, name_index)
    address_1 = get_field_data(contact, address_1_index)
    city = get_field_data(contact, city_index)
    state = get_field_data(contact, state_index)
    postal_code = get_field_data(contact, postal_code_index)
    telephone_number = get_field_data(contact, telephone_number_index)
    
    contacts << Contact.new(name, address_1, city, state, 
                            postal_code, telephone_number)
  end
  
  contacts
end

File.open(Contacts_Filename, 'r') do |f|
  contacts_headers = parse_contacts_headers(f.readline)
  contacts_data = parse_contacts_data(f.readlines)
  
  contacts_array = create_contacts_array(contacts_headers, contacts_data)
end

