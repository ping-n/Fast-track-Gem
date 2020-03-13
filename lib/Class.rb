# frozen_string_literal: true

class Employee
  attr_accessor :first_name, :last_name, :age, :gender
  def initialize(f_name, l_name, age, gender)
    @first_name = f_name
    @last_name = l_name
    @age = age
    @gender = gender
  end

  def to_a
    [@first_name, @last_name, @age, @gender]
  end
end

class Shift
  attr_accessor :day, :name, :s_time, :e_time
  def initialize(day, name, s_time, e_time)
    @day  = day
    @name = name
    @start_time = s_time
    @end_time = e_time
  end
end
