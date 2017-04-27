require 'contact.rb'

CONTACTS_FILENAME = 'contacts.txt'

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

File.open(CONTACTS_FILENAME, 'r') do |f|
  contacts_headers = parse_contacts_headers(f.readline)
  contacts_data = parse_contacts_data(f.readlines)
end

