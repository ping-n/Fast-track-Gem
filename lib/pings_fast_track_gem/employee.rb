# require_relative "./methods"
require "csv"

employees = []

class Employee
  attr_reader :f_name, :l_name, :age, :gender

  def initialize(f_name, l_name, age, gender)
    @first_name = f_name
    @last_name = l_name
    @age = age
    @gender = gender
    @shift = []
  end

  def add_shift
    # puts 'Please input employee name: '
    # e_name = gets.chomp.capitalize # method to find employee from the database
    # puts 'Please input day of the week: ' # assign shift according to day of the week 
    # day_of_week = gets.chomp
    # puts 'Please input starting time: ' 
    # start_time = gets.chomp.to_i
    # puts 'Please input starting time: '
    # end_time = gets.chomp.to_i
    
    # editing employee profile data and assign a start and end time
    # maybe print out e_name is assign for day_of_week starting at start_time and finish at end_time
  end
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
  
  # employee = Employee.new(name, age, gender)
  # employees << employee

  CSV.open("database.csv", "ab") do |csv|
    csv << [f_name, l_name, age, gender]
  end 
end

create_profile(employees)

