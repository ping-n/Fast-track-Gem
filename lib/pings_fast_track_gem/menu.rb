
def menu
  loop do
  puts "Please choose from the following options"
  puts "1: Creating a new profile"
  puts "2: Update existing profile"
  puts "3: Assign a roster to an employee"
  puts "4: Exit the app"
  print "--" * 27
  print ""
  print ">>"
  selection = gets.chomp.to_i

  case selection
    when 1
    when 2
    when 3
    else 4
      puts "Thank you for using our service"
      exit
    end
  end
end