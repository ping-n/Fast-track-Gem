require_relative "version"
employees = []

def read_employee_csv
  csv_text = File.read('database.csv')
  csv = CSV.parse(csv_text, headers: true)
  csv.map do |employee|
    employee_hash = employee.to_hash
    Employee.new(employee_hash["First Name"], employee_hash["Last Name"], employee_hash["Age"], employee_hash["Gender"])
  end 
end

def menu(data)
  prompt = TTY::Prompt.new
  system("clear")
  user_selection = prompt.select('Please select from the following options') do |menu|
    menu.choice 'Create New Employee', 1
    menu.choice 'Update Existing Profile', 2
    menu.choice 'Assign Shifts', 3
    menu.choice 'Exit Application', 4
  end

  case user_selection
  when 1
    create_profile
  when 2
    update_profile(data)
  when 3
    add_shift
  when 4
    puts "Thank you for using our service"
    exit
  end
end

menu(read_employee_csv)