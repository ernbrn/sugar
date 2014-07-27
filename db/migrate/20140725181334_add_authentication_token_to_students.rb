class AddAuthenticationTokenToStudents < ActiveRecord::Migration
  def change
    add_column :students, :authentication_token, :string
  end
end
