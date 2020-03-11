require_relative "version"

employee_profile = []

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

def read_employee_csv(employees)
  csv_text = File.read('database.csv')
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |employee|
    employee_hash = employee.to_hash
    employees << Employee.new(employee_hash["First Name"], employee_hash["Last Name"], employee_hash["Age"], employee_hash["Gender"])
  end 
end

def create_profile(employees)
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
  else 
    puts "employee not found"
  end
end