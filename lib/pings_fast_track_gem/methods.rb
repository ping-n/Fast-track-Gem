require_relative "version"

employee_profile = []

def create_profile
  system "clear"
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
  system "clear"
  prompt = TTY::Prompt.new
  name_input = prompt.ask("Which employee profile would you like to update?") do |q|
    q.required(true)
    q.validate /\A\w+\Z/
    q.modify   :capitalize
  end
  found = employees.detect do |employee|
  employee.first_name == name_input
  end
  if found
  selection = prompt.select('Please select from the following options') do |menu|
    menu.enum "."
    menu.choice 'Update First Name', 1
    menu.choice 'Update Last Name', 2
    menu.choice 'Update Age', 3
    menu.choice 'Update Gender', 4
  end
    case selection
      when 1
      user_input = prompt.ask("Enter new first name: ") do |q|
        q.required(true)
        q.validate /\A\w+\Z/
        q.modify   :capitalize
      end
      found.first_name = user_input
      when 2
      user_input = prompt.ask("Enter new last name: ") do |q|
        q.required(true)
        q.validate /\A\w+\Z/
        q.modify   :capitalize
      end
      found.first_name = user_input
      when 3
      user_input = prompt.ask("Enter new age: ") do |q|
        q.required(true)
      end
      found.age = user_input
      when 4
      user_input = prompt.ask("Enter new gender: ") do |q|
        q.required(true)
        q.validate /\A\w+\Z/
        q.modify   :capitalize
      end
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
  system "clear"
  prompt = TTY::Prompt.new
  days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  day = prompt.select("Please select a day: ", days, filter: true)

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