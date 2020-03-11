require_relative "version"
employees = []
prompt = TTY::Prompt.new

def menu(employees)
  loop do
  puts "Please choose from the following options"
  puts "1: Creating a new profile"
  puts "2: Update or Remove existing profile"
  puts "3: Assign a roster to an employee"
  puts "4: Exit the app"
  print "--" * 27
  print ""
  print ">>"
  selection = gets.chomp.to_i
  case selection
    when 1 
      create_profile(employees)
    when 2
      update_profile(employees)
    when 3
      add_shift()
    else 4
      puts "Thank you for using our service"
      exit
    end
  end
end

def read_employee_csv
  csv_text = File.read('database.csv')
  csv = CSV.parse(csv_text, headers: true)
  csv.map do |employee|
    employee_hash = employee.to_hash
    Employee.new(employee_hash["First Name"], employee_hash["Last Name"], employee_hash["Age"], employee_hash["Gender"])
  end 
end

menu(read_employee_csv)