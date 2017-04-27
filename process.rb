#!/usr/bin/env ruby

require_relative './parsers.rb'

Default_Contacts_Filename = 'contacts.txt'
Separator_String = "---------"

def display_contacts(contacts_array)
  contacts_array.each_with_index do |contact, index|
    puts "Contact #{index + 1}"      
    puts Separator_String
    puts contact.get_information(whole_state: contact.state == "NY")
  end
end

File.open(Default_Contacts_Filename, 'r') do |f|
  contacts_headers = Parser::parse_contacts_headers(f.readline)
  contacts_data = Parser::parse_contacts_data(f.readlines)
  
  contacts_array = Parser::create_contacts_array(contacts_headers, contacts_data)
  display_contacts(contacts_array)
end

