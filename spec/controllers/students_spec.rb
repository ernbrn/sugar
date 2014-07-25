require 'rails_helper'

describe StudentsController do
  it 'Get :index' do
    student = create(:student)
    get :index, format: :json
    expect(response).to be_success
    data = JSON.parse(response.body)
    expect(data.first).to have_key("name")
    expect(data.first).to have_key('email')
    expect(data.first["name"]).to eq student.name
  end


  describe "GET :show" do
    it 'can show a valid student' do
      student = create(:student)
      get :show, id: student.id, format: :json
      expect(response).to be_success
      data = JSON.parse(response.body)
      expect(data).to have_key("name")
      expect(data).to have_key('email')
      expect(data["name"]).to eq student.name
    end

    #
    # it "serve image_url instead of image_uid" do
    #
    # end

  end
  #
  # describe 'POST :create' do
  #   it 'succeeds when all attributes are set' do
  #
  #   end
  #
  #   it 'POST :create with Error' do
  #
  #   end
  #
  #   it 'cannot create with the wrong format' do
  #
  #   end
  # end
  #
  # describe "PATCH :update" do
  #   it 'succeeds when data is changed' do
  #
  #   end
  #
  #   it 'fails when a required field is missing' do
  #
  #   end
  #
  # end
  #
  # describe 'DELETE :destroy' do
  #   it 'can delete an existing record' do
  #
  #   end
  #
  #   it 'cannot delete a nonexistent record' do
  #   end
  # end
end
