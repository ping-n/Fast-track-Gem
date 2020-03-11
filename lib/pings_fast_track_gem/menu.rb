require_relative "version"

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
      read_employee_csv(employees)
    when 2
      update_profile(employees)
    when 3
      
    else 4
      puts "Thank you for using our service"
      exit
    end
  end
end