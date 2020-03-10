require_relative "Employee"
require "csv"

employee_profile = []

def create_profile
  puts 'Enter First Name: '
  first_name = gets.chomp.capitalize

  puts 'Enter Last Name: '
  last_name = gets.chomp.capitalize

  puts 'Enter a Age: '
  age = gets.chomp.to_i

  puts 'Enter a Gender: '
  gender = gets.chomp.capitalize
end

def read_employee_csv(employees)
  csv_text = File.read('database.csv')
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |employee|
    employee_hash = employee.to_hash
    employees << Employee.new(employee_hash["Name"], employee_hash["Age"], employee_hash["Gender"])
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
  # end

  
  employee = Employee.new(name, age, gender)
  employees << employee

  CSV.open("database.csv", "ab") do |csv|
    csv << [name, age, gender]
  end 
end