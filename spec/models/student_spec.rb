require 'rails_helper'

describe Student do
  describe 'a student' do
    it "belongs to a semester" do
      student = Student.new
      semester = Semester.new
      semester.students << student
      expect(student.semester).to be semester
    end
  end
end