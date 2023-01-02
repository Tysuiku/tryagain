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
  end
end
