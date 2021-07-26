class Cohort < ActiveRecord::Base
  has_many :students

    def add_student(name, age)
        student = Student.create(name: name, age: age, cohort_id: self.id)
    end

    def average_age
        # self.students.average(:age)
        students_ages = self.students.map{|student| student.age} # getting ages of all students 
        total_years = students_ages.sum # summing all ages
        total_years / students_ages.length.to_f # dividing by number of students to get average
    end

    def total_students
        self.students.count
    end

    def self.biggest
        cohort_size = self.all.map{|cohort| cohort.students.count}
        idx = cohort_size.index(cohort_size.max())
        self.all[idx]
    end

    def self.sort_by_mod
        self.all.order(:current_mod)
    end

end