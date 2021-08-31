require_relative "employee.rb"

class Manager < Employee
    def initialize
        @employees = []
    end

    def bonus(multiplier)
        total = 0
        employees.each do |employee|
            total += employee.salary
        end
        return total * multiplier
    end

    def add_employee(employee)
        employees << employee
    end

    attr_reader :employees
end