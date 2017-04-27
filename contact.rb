class Contact
  attr_accessor :name, :address_1, :city, :state, :postal_code, :telephone_number    
    
  def initialize(name, address_1, city, state, postal_code, telephone_number)
    @name = name
    @address_1 = address_1
    @city = city
    @state = state
    @postal_code = postal_code
    @telephone_number = telephone_number
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
end

person = Contact.new("john smith", "123 Main St.", "Los Angeles", "CA", "90213", "+15424478569")
puts person.first_name
puts person.last_name
puts person.address


