class Instructor < ApplicationRecord
    has_many :students
    
    def avg_student_age
        students.average(:age).to_i
    end
end
