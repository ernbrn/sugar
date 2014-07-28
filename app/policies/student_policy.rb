class StudentPolicy < ApplicationPolicy

  def initialize(user, record)
    @student = user
    @jessica = record
  end



  def update?
    @jessica.admin?
  end
end
