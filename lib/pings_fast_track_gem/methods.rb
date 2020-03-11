require_relative "version"

employee_profile = []
prompt = TTY::Prompt.new

def create_profile
  puts 'Enter First Name: '
  f_name = gets.chomp.capitalize

  puts 'Enter Last Name: '
  l_name = gets.chomp.capitalize

  puts 'Enter a Age: '
  age = gets.chomp.to_i

  puts 'Enter a Gender: '
  gender = gets.chomp.capitalize

  CSV.open("database.csv", "ab") do |csv|
    csv << [f_name, l_name, age, gender]
  end 
end

def update_profile(employees)
  puts "Which employee profile would you like to update?"
  print ">> "
  name_input = gets.chomp.capitalize
  found = employees.detect do |employee|
  employee.first_name == name_input
  end
  if found
  puts "Please select from the following options"
  puts "1: Update First Name"
  puts "2: Update Last Name"
  puts "3: Update Age"
  puts "4: Update Gender"
  print ">> "
  selection = gets.chomp.to_i
    case selection
      when 1
      puts "Enter new First Name: "
      user_input = gets.chomp.capitalize
      found.first_name = user_input
      when 2
      puts "Enter new Last Name: " 
      user_input = gets.chomp.capitalize
      found.last_name = user_input
      when 3
      puts "Enter new age: " 
      user_input = gets.chomp
      found.age = user_input
      when 4
      puts "Enter new gender: "
      user_input = gets.chomp.capitalize
      found.gender = user_input
    end
    write_csv(employees) 
  else 
    puts "employee not found"
  end
end

def write_csv(employees)
 CSV.open "database.csv", "w" do |file|
  file << ['First Name','Last Name','Age','Gender']
  employees.each do |employee|
  file << employee.to_a
  end
 end
end

def add_shift
  puts 'Enter a day: (e.g monday)'
  print ">> "
  day = gets.chomp.capitalize

  puts 'Enter name of employee: '
  print ">> "
  name = gets.chomp.capitalize

  puts 'Enter starting time: (e.g  8:00am)'
  print ">> "
  s_time = gets.chomp

  puts 'Enter ending time: (e.g 4:00pm)'
  print ">> "
  e_time = gets.chomp

  CSV.open("shift.csv", "ab") do |csv|
    csv << [day, name, s_time, e_time]
  end
end