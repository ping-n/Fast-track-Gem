require_relative "version"

employee_profile = []
$prompt = TTY::Prompt.new

def create_profile
  system "clear"
  f_name = $prompt.ask("Enter first name:") do |q|
    q.required(true)
    q.validate /\A\w+\Z/
    q.modify   :capitalize
  end

  l_name = $prompt.ask("Enter last name:") do |q|
    q.required(true)
    q.validate /\A\w+\Z/
    q.modify   :capitalize
  end

  age = $prompt.ask("Enter age:")

  gender = $prompt.ask("Enter gender") do |q|
    q.required(true)
    q.validate /\A\w+\Z/
    q.modify   :capitalize
  end

  CSV.open("database.csv", "ab") do |csv|
    csv << [f_name, l_name, age, gender]
  end 
end

def update_profile(employees)
  system "clear"
  name_input = $prompt.ask("Which employee profile would you like to update?") do |q|
    q.required(true)
    q.validate /\A\w+\Z/
    q.modify   :capitalize
  end
  found = employees.detect do |employee|
  employee.first_name == name_input
  end

  if found
  selection = $prompt.select('Please select from the following options') do |menu|
    menu.enum "."
    menu.choice 'Update First Name', 1
    menu.choice 'Update Last Name', 2
    menu.choice 'Update Age', 3
    menu.choice 'Update Gender', 4
  end
    case selection
      when 1
      user_input = $prompt.ask("Enter new first name:") do |q|
        q.required(true)
        q.validate /\A\w+\Z/
        q.modify   :capitalize
      end
      found.first_name = user_input
      when 2
      user_input = $prompt.ask("Enter new last name:") do |q|
        q.required(true)
        q.validate /\A\w+\Z/
        q.modify   :capitalize
      end
      found.last_name = user_input
      when 3
      user_input = $prompt.ask("Enter new age:") do |q|
        q.required(true)
      end
      found.age = user_input
      when 4
      user_input = $prompt.ask("Enter new gender:") do |q|
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
  days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  day = $prompt.select("Please select a day: ", days, filter: true)

  name = $prompt.ask('Please input the name of the employee: ') do |q|
    q.required(true)
    q.validate /\A\w+\Z/
    q.modify   :capitalize
  end

  times = [
    '12:00am', '1:00am', '2:00am', '3:00am', '4:00am', '5:00am', '6:00am', '7:00am', '8:00am', '9:00am', '10:00am', '11:00am', '12:30am', '1:30am', '2:30am', '3:30am', '4:30am', '5:30am', '6:30am', '7:30am', '8:30am', '9:30am', '10:30am', '11:30am', '12:00pm', '1:00pm', '2:00pm', '3:00pm', '4:00pm', '5:00pm', '6:00pm', '7:00pm', '8:00pm', '9:00pm', '10:00pm', '11:00pm', '12:30pm', '1:30pm', '2:30pm', '3:30pm', '4:30pm', '5:30pm', '6:30pm', '7:30pm', '8:30pm', '9:30pm', '10:03pm', '11:30pm'
  ]
  s_time = $prompt.select('Please select start time: ', times, filter: true)

  e_time = $prompt.select('Please select start time: ', times, filter: true)

  CSV.open("shift.csv", "ab") do |csv|
    csv << [day, name, s_time, e_time]
  end
end