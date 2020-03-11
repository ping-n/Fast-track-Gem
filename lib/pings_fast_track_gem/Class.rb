require_relative "version"
# shifts = []

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

# def read_shift_csv(shifts)
#   csv_text = File.read('shift.csv')
#   csv = CSV.parse(csv_text, headers: true)
#   csv.each do |shift|
#     shift_hash = shift.to_hash
#     shifts << Shift.new(shift_hash["Day"], shift_hash["Name"], shift_hash["Start Time"], shift_hash["End Time"])
#   end 
# end

# read_shift_csv(shifts)