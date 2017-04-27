States_Raw = <<-DOC
Alabama (AL) 
Alaska (AK) 
Arizona (AZ) 
Arkansas (AR) 
California (CA) 
Colorado (CO) 
Connecticut (CT) 
Delaware (DE) 
Florida (FL) 
Georgia (GA) 
Hawaii (HI) 
Idaho (ID) 
Illinois (IL) 
Indiana (IN) 
Iowa (IA) 
Kansas (KS) 
Kentucky (KY) 
Louisiana (LA) 
Maine (ME) 
Maryland (MD) 
Massachusetts (MA) 
Michigan (MI) 
Minnesota (MN) 
Mississippi (MS) 
Missouri (MO) 
Montana (MT) 
Nebraska (NE) 
Nevada (NV) 
New Hampshire (NH) 
New Jersey (NJ) 
New Mexico (NM) 
New York (NY) 
North Carolina (NC) 
North Dakota (ND) 
Ohio (OH) 
Oklahoma (OK) 
Oregon (OR) 
Pennsylvania (PA) 
Rhode Island (RI) 
South Carolina (SC) 
South Dakota (SD) 
Tennessee (TN) 
Texas (TX) 
Utah (UT) 
Vermont (VT) 
Virginia (VA) 
Washington (WA) 
West Virginia (WV) 
Wisconsin (WI) 
Wyoming (WY)
DOC

def get_states_data

  states_data = {}
  States_Raw.each_line do |state|
    matches = state.match(/([A-Za-z ]+) \(([A-Za-z]+)\)/)
    state_whole_name = matches[1]
    state_abbreviation = matches[2]
    #states_data << { state_abbreviation => state_whole_name }
    states_data[state_abbreviation] = state_whole_name
  end
  
  states_data
end
