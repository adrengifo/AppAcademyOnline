require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees
    
    def initialize(name, funding, salaries)
        @name = name
        @funding = funding 
        @salaries = salaries
        @employees = []
    end

    def valid_title? (title)
        @salaries.has_key?(title)
    end

    def > (startup2)
        self.funding > startup2.funding
    end 

    def hire(employee_name, title)
        if self.valid_title?(title)
            @employees << Employee.new(employee_name, title)
            return true
        else 
            raise 
        end
    end

    def size
        return @employees.length
    end

    def pay_employee(employee_inst)
        title =  employee_inst.title
        pay = @salaries[title]
        if @funding >= pay
            employee_inst.pay(pay)
            @funding -= pay
        else
            raise
        end
    end

    def payday
        @employees.each {|employee| pay_employee(employee)}
    end

    def average_salary
        all_pay = [] 
        @employees.each{|employee| all_pay << @salaries[employee.title]}
        return all_pay.sum/all_pay.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup2)
        @funding += startup2.funding
        @salaries.merge!(startup2.salaries){|key, old_val, new_val| old_val}
        @employees.concat(startup2.employees)
        startup2.close
    end
end
