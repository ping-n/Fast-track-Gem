require_relative "version"

$artii = Artii::Base.new
$pastel = Pastel.new

def read_employee_csv
  csv_text = File.read('./csv/database.csv')
  csv = CSV.parse(csv_text, headers: true)
  csv.map do |employee|
    employee_hash = employee.to_hash
    Employee.new(employee_hash["First Name"], employee_hash["Last Name"], employee_hash["Age"], employee_hash["Gender"])
  end 
end

def read_shifts_csv
  csv_text = File.read('./csv/shift.csv')
  csv = CSV.parse(csv_text, headers: true)
  csv.map do |shift|
    shift_hash = shift.to_hash
    Shift.new(shift_hash["Day"], shift_hash["Name"], shift_hash["Start Time"], shift_hash["End Time"])
  end 
end

def menu(employee, shift)
  prompt = TTY::Prompt.new
  system("clear")
  puts $artii.asciify('Roster App').colorize(:black).colorize( :background => :green)

  puts "**" * 27
  puts $pastel.bright_red.bold('Welcome to the roster app')
  puts "**" * 27
  loop do
    user_selection = prompt.select('Please select from the following options', active_color: :bright_blue) do |menu|
      menu.choice 'Create New Employee', 1
      menu.choice 'Update Existing Profile', 2
      menu.choice 'Assign Shifts', 3
      menu.choice 'View Employee Profile', 4
      menu.choice 'View Existing Shift', 5
      menu.choice 'Exit Application', 6
    end

    case user_selection
    when 1
      create_profile
    when 2
      update_profile(data)
    when 3
      add_shift
    when 4 
      pp data
    when 5
      pp shift
    when 6
      puts "**" * 27
      puts $pastel.bright_red.bold("Thank you for using our service")
      puts "**" * 27
      exit
    end
  end
end

menu(read_employee_csv, read_shifts_csv)
