require 'rails_helper'

describe Semester do
  describe 'a semester' do
    it "has many students" do
      student = Student.new
      student2 = Student.new
      student3 = Student.new
      semester = Semester.new
      semester.students << student
      expect(semester.students).to include(student)
      semester.students << student2
      expect(semester.students).to include(student2)
      semester.students << student3
      expect(semester.students).to include(student3)
      expect(semester.students.size).to be 3
    end
  end
end