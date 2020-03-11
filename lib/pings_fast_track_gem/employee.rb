require_relative "version"

employees = []
shifts = []

class Employee
attr_accessor :first_name, :last_name, :age, :gender
  def initialize(f_name, l_name, age, gender)
    @first_name = f_name
    @last_name = l_name
    @age = age
    @gender = gender
  end
end

class Shift
attr_accessor :day :name :s_time, :e_time
  def initialize(day, name, s_time, e_time)
    @day  = day
    @name = name
    @start_time = s_time
    @end_time = e_time
  end
end

# def read_employee_csv(employees)
#   csv_text = File.read('database.csv')
#   csv = CSV.parse(csv_text, headers: true)
#   csv.each do |employee|
#     employee_hash = employee.to_hash
#     employees << Employee.new(employee_hash["First Name"], employee_hash["Last Name"], employee_hash["Age"], employee_hash["Gender"])
#   end 
# end

# def read_shift_csv(shift)
#   csv_text = File.read('shift.csv')
#   csv = CSV.parse(csv_text, headers: true)
#   csv.each do |shift|
#     shift_hash = shift.to_hash
#     shifts << Shift.new(shift_hash["Day"], shift_hash["Name"], shift_hash["Start Time"], shift_hash["End Time"])
#   end 
# end

# read_employee_csv(employees)

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

  CSV.open("database.csv", "ab") do |csv|
    csv << [day, name, s_time, e_time]
end

add_shift