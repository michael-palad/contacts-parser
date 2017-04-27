States_Filename = 'states.txt'

def get_states_data
  states_raw = File.read(States_Filename)
  states_data = {}
  states_raw.each_line do |state|
    matches = state.match(/([A-Za-z ]+) \(([A-Za-z]+)\)/)
    state_whole_name = matches[1]
    state_abbreviation = matches[2]
    states_data[state_abbreviation] = state_whole_name
  end
  
  states_data
end
