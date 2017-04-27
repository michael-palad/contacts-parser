class Contact
  Full_Phone_Length = 12    
    
  attr_accessor :name, :address_1, :city, :state, 
                :postal_code, :telephone_number_raw    
    
  def initialize(name, address_1, city, state, postal_code, 
                 telephone_number_raw)
    @name = name
    @address_1 = address_1
    @city = city
    @state = state
    @postal_code = postal_code
    @telephone_number_raw = telephone_number_raw
  end
  
  def first_name
    name.split[0].capitalize      
  end
  
  def last_name
    name.split[1].capitalize      
  end
  
  def address
    "#{address_1}, #{city}, #{state} #{postal_code}"  
  end
  
  def telephone_number
    if telephone_number_raw.length >= Full_Phone_Length &&
       telephone_number_raw[0] == '+'
      country_code = telephone_number_raw[0..1] 
      area_code = telephone_number_raw[2..4]
      phone_1 = telephone_number_raw[5..7]
      phone_2 = telephone_number_raw[8..-1]
      return "#{country_code} #{area_code} #{phone_1} #{phone_2}"
    else
      telephone_number_raw    
    end
  end
  
  # should have used squiggly heredoc "<<~" here
  # but it is not supported on Ruby versions older than 2.3
  def to_s
    "First Name: #{first_name}\nLast Name: #{last_name}\n" +
    "Address: #{address}\nTelephone Number: #{telephone_number}"
  end
end

#person = Contact.new("john smith", "123 Main St.", "Los Angeles", "CA", "90213", "+15424478569")
#puts person.telephone_number


