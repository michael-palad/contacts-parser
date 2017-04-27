
CONTACTS_FILENAME = 'contacts.txt'

def parse_contact_headers(line)
  puts line.strip.split('|') 
end

File.open(CONTACTS_FILENAME, 'r') do |f|
  first_line = f.readline
  contact_headers = parse_contact_headers(first_line)
      
end