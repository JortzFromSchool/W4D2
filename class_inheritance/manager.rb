require_relative "employee.rb"

class Manager < Employee
    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def bonus(multiplier)
        total = 0
        employees.each do |employee|
            total += employee.salary
            if employee.is_a?(Manager)
                total += employee.bonus(1)
            end
        end
        return total * multiplier
    end

    def add_employee(employee)
        employees << employee
    end

    attr_reader :employees
end