require_relative "version"
employees = []

# def menu(employees)
#   loop do
#   puts "Please choose from the following options"
#   puts "1: Creating a new profile"
#   puts "2: Update or Remove existing profile"
#   puts "3: Assign a roster to an employee"
#   puts "4: Exit the app"
#   print "--" * 27
#   print ""
#   print ">>"
#   selection = gets.chomp.to_i
#   case selection
#     when 1 
#       create_profile(employees)
#     when 2
#       update_profile(employees)
#     when 3
#       add_shift()
#     else 4
#       puts "Thank you for using our service"
#       exit
#     end
#   end
# end

def read_employee_csv
  csv_text = File.read('database.csv')
  csv = CSV.parse(csv_text, headers: true)
  csv.map do |employee|
    employee_hash = employee.to_hash
    Employee.new(employee_hash["First Name"], employee_hash["Last Name"], employee_hash["Age"], employee_hash["Gender"])
  end 
end

# menu(read_employee_csv)

def test(data)
  prompt = TTY::Prompt.new
  system("clear")
  choices = ['Create New Employee', 'Update Existing Profile', 'Assign Shifts', 'Exit Application']
  user_selection = prompt.select('Please select from the following options', choices)

  if user_selection == 'Create New Employee'
    create_profile
  elsif user_selection == 'Update Existing Profile'
    update_profile(data)
  elsif user_selection == 'Assign Shifts'
    add_shift
  else user_selection == 'Exit Application'
    puts "Thank you for using our service"
    exit
  end
end

test(read_employee_csv)