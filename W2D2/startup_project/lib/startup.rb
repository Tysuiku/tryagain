require "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    @salaries.include? title
  end

  def >(other_start_up)
    @funding > other_start_up.funding
  end

  def hire(employee_name, title)
    raise "title does not exist" if !self.valid_title?(title)
    @employees << Employee.new(employee_name, title)
  end

  def size
    @employees.length
  end

  def pay_employee(employee)
    amount = self.salaries[employee.title]
    raise "not enough funding" if amount > @funding

    employee.pay(amount)
    @funding -= amount
  end

  def payday
  end
end
