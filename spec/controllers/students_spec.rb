# require 'rails_helper'
#
# describe StudentsController do
#
#   it 'GET :index' do
#     student = create(:student)
#     get :index, format: :json
#     expect(response).to be_success
#     data = JSON.parse(response.body)
#     expect(data.first).to have_key("name")
#     expect(data.first).to have_key('email')
#     expect(data.first["name"]).to eq student.name
#   end
#
#
#   describe "GET :show" do
#     it 'can show a valid student' do
#       student = create(:student)
#       get :show, id: student.id, format: :json
#       expect(response).to be_success
#       data = JSON.parse(response.body)
#       expect(data).to have_key("name")
#       expect(data).to have_key('email')
#       expect(data["name"]).to eq student.name
#     end
#
#
#   end
#
#   describe 'POST :create' do
#     before { @student_attributes = attributes_for(:student)}
#     it 'succeeds when all attributes are set' do
#       post :create, student: @student_attributes, format: :json
#       expect(response).to have_http_status(:created)
#       data = JSON.parse(response.body)
#       expect(data).to have_key('name')
#       expect(data["name"]).to eq @student_attributes[:name]
#       expect(data).to have_key('authentication_token')
#     end
#
#   end
#
#   describe "PATCH :update" do
#     before { @student = create(:student) }
#     it 'succeeds when data is changed' do
#      patch :update, id: @student.id, student:{name: "Henry"}, format: :json
#      expect(response).to have_http_status(:no_content)
#      expect(Student.find(@student.id).name).to eq 'Henry'
#     end
#
#
#   end
#
#
#   describe 'DELETE :destroy' do
#     it 'can delete an existing record' do
#       student = create(:student)
#       delete :destroy, id: student.id, format: :json
#       expect(response).to have_http_status(:no_content)
#       expect{Student.find(student.id)}.to raise_error ActiveRecord::RecordNotFound
#     end
#
#   end
# end
