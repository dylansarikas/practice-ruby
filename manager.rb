class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active, :salary

  def initialize(options_hash)
    @first_name = options_hash[:first_name]
    @last_name = options_hash[:last_name]
    @salary = options_hash[:salary]
    @active = options_hash[:active]
  end
  
  def print_info
    puts "#{first_name} #{last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

employee1 = Employee.new({first_name: "Peter", last_name: "Jang", salary: 40000, active: true})
employee2 = Employee.new(first_name: "Jay", last_name: "Wengrow", salary: 100000, active: true)

class Manager < Employee
  attr_accessor :employees
  
  def initialize(options_hash)
    super
    @employees = options_hash[:employees]
  end

  def send_report
    puts "Sending email..."
    # use some email sending library
    puts "Email sent!"
  end

  def give_all_raises
    counter = 0
    while counter < @employees.length
      #puts "hello"
      #puts @employees[counter].salary
      @employees[counter].salary= (@employees[counter].salary * 1.05)
      counter = counter + 1
    end

  end

  def fire_all_employees
    counter = 0
    while counter < @employees.length
      @employees[counter].active = false
      counter += 1
    end
  end

end

manager = Manager.new(first_name: "Dani", last_name: "Zaghian", salary: -500000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
#puts manager.employees
puts employee1.salary
puts employee2.salary
manager.give_all_raises
puts employee1.salary
puts employee2.salary

puts employee1.active
puts employee2.active
manager.fire_all_employees
puts employee1.active
puts employee2.active