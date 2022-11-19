require_relative '../teacher'

describe 'Teacher object' do
  @specialization = 'Programming'
  teacher = Teacher.new(27, 'Lucas', true)

  context 'should create an instance of Teacher class' do
    it 'Teacher object' do
      expect(teacher.class) == Teacher
    end
  end
  context 'should create an instance of Teacher specialization' do
    it 'Teacher' do
      expect(@specialization) == 'Programming'
    end
  end
  context 'Teacher can use service' do
    it 'Can use service?' do
      expect(teacher.can_use_services?) == true
    end
  end
end
