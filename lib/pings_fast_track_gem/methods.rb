def create_profile
  puts 'Enter First Name: '
  first_name = gets.chomp.capitalize

  puts 'Enter Last Name: '
  last_name = gets.chomp.capitalize

  puts 'Enter a Age: '
  age = gets.chomp.to_i

  puts 'Enter a Gender: '
  gender = gets.chomp.capitalize
end

# def profile_update

# end

def add_shift
  puts 'which employee would like to add shift for?'
  e_name = gets.chomp.capitalize

end