class Cohort < ActiveRecord::Base
  has_many :students

  def add_student(name, age)
    Student.create(name: name, age: age, cohort_id: self.id)
  end

  def average_age
    (self.students.sum(&:age)/self.students.length).to_f
  end

  def total_students
    self.students.length
  end

  def self.biggest
    self.all.max{|a, b| a.students.length <=> b.students.length}
  end
  def self.sort_by_mod
    self.all.sort{|a, b| a.current_mod <=> b.current_mod}.reverse
  end
end