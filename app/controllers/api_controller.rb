class ApiController < ApplicationController
  before_filter :authenticate_student_from_token!
  # This is Devise's authentication
  before_filter :authenticate_student!

  private

  def authenticate_student_from_token!
    student_email = params[:student_email].presence
    student       = student_email && Student.find_by_email(student_email)

    # Notice how we use Devise.secure_compare to compare the token
    # in the database with the token given in the params, mitigating
    # timing attacks.
    if student && Devise.secure_compare(student.authentication_token, params[:student_token])
      sign_in student, store: false
    end
  end
end