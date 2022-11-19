require_relative '../student'
require_relative '../classroom'

describe 'Student' do
  before :each do
    @label = 224
    @age = 11
    @name = 'Jacob'
    @parent_permission = true
    @student = Student.new(@label, @age, @name, @parent_permission)
    @classroom = Classroom.new(@label)
  end
  it 'Paly hooky' do
    expect(@student.paly_hooky).to eq "¯\(ツ)/¯"
  end
  it 'Classroom' do
    expect(@classroom).to be_an_instance_of Classroom
  end
end