# ip address validator here

# def valid_ip? ip
# 	if !ip.is_a? String
# 		return false
# 	end

# 	num_array = ip.split(".");

# 	if num_array.length != 4
# 		return false
# 	end

# 	for num in num_array do 
# 		if num.to_i < 0 || num.to_i > 255
# 			return false
# 		end
# 	end

# 	return true

# end

#Elie's solution:
# def valid_ip? (ip)
#   match = ip =~ /^([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$/

#   # if match is not nil, return true otherwise return false
#   !match.nil? ? true : false

#   # What the ternary is doing under the hood
#   # if match.nil?
#   #   return false
#   # else
#   #   return true
#   # end

# end

def valid_ip?(address)
  address.is_a?(String)? validate_number_count(address) : false
end

# validates that there are exactly 4 numbers in the address
def validate_number_count(address)
  address_arr = address.split(".")
  address_arr.count == 4? validate_range(address_arr) : false
end

# validates that the number's value lies within a range
def validate_range(address_arr)
  address_arr.all? do |number|
    number.to_i <= 255 && number.to_i >= 0
  end
end