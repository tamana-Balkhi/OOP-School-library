class Classroom
  attr_reader :students
  attr_accessor :label

  def initialize(label, students = [])
    @label = label
    @students = students
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end
