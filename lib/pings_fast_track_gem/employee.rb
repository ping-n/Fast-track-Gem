require_relative "./methods"

class Employee
  attr_accessor

  def initialize(first_name, last_name, age, gender)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @gender = gender
    @shift = []
  end

  def add_shift
    puts 'Please input employee name: '
    e_name = gets.chomp.capitalize # method to find employee from the database
    puts 'Please input day of the week: ' # assign shift according to day of the week 
    day_of_week = gets.chomp
    puts 'Please input starting time: ' 
    start_time = gets.chomp.to_i
    puts 'Please input starting time: '
    end_time = gets.chomp.to_i
    
    # editing employee profile data and assign a start and end time
    # maybe print out e_name is assign for day_of_week starting at start_time and finish at end_time
  end

end

end

    