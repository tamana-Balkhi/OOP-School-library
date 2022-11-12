class Classroom
  attr_reader :students
  attr_accessor :label


def initialize(label , students[])
  @students = students
  @label = label
end

def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end
