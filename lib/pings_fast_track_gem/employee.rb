
class Employee
  attr_accessor

  def initialize(first_name, last_name, age, gender)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @gender = gender
  end

end


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

  employee_profile << Employee.new(first_name, last_name, age, gender)
end
