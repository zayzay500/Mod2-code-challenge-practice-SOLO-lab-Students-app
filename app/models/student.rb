class Student < ApplicationRecord
    belongs_to :instructor
    
    validates :age, numericality: { greater_than: 18}
    
    def instructor_name
        instructor.name
    end
end
