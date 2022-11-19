require_relative '../classroom'

describe 'Classroom' do
  before :each do
    @label = 224
    @students = []
  end

  classroom = Classroom.new(@label)
  context 'should create an instance of Classroom class' do
    it 'Classroom object' do
      expect(classroom.class) == Classroom
    end
  end
  context 'should create an students list' do
    it 'Classroom list' do
      expect(Classroom.instance_methods(false).include?(:add_student)).to eq true
    end
  end
end
