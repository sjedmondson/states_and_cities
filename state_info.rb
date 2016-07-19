@states = {
  OR: {full_name: 'Oregon', city: 'Portland', tax_rate: 12},                  
  FL: {full_name: 'Florida', city: 'Miami', tax_rate: 10},                    # states[code][:city] == 'Miami'
  CA: {full_name: 'California', city: 'LA', tax_rate: 11.5},
  NY: {full_name: 'New York', city: 'New York', tax_rate: 15},
  MI: {full_name: 'Michigan', city: 'Lansing', tax_rate: 9},
  WA: {full_name: 'Washington State', city: 'Seattle', tax_rate: 11},
  MT: {full_name: 'Montana', city: 'Helena', tax_rate: 8.5}
}


def describe_state(state_code)
  state_name = @states[state_code.to_sym][:full_name]
  puts "#{state_code} is for #{state_name}"  
end

def calculate_tax(state_code, cash_spent)
  rate = @states[state_code.to_sym][:tax_rate]
  taxes_paid = cash_spent * (rate / 100)
  puts "In #{state_code} you would pay #{rate}% tax on #{cash_spent}. The total taxes paid would be #{taxes_paid.round(2)}."
end

def find_state_for_city(city)
  @states.each_key {|key| 
    value = @states[key]
    if value[:city] == city
      puts "#{city} is part of #{key}."
    end
  }
end



describe_state('WA')


calculate_tax('CA', 100)


find_state_for_city('Portland')





# cities = {
#   OR: 'Portland',
#   FL: 'Miami',
#   CA: 'LA',
#   NY: 'New York',
#   MI: 'Lansing',
#   WA: 'Seattle',
#   MT: 'Helena'
# }

# taxes = {
#   OR: 12,
#   FL: 10,
#   CA: 11.5,
#   NY: 15,
#   MI: 9,
#   WA: 11,
#   MT: 8.5
# }