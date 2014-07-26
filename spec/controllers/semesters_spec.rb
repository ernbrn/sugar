require 'rails_helper'

describe SemestersController do

  it 'GET :index' do
    semester = create(:semesters)
    get :index, format: :json
    expect(response).to be_success
    data = JSON.parse(response.body)
    expect(data.first).to have_key("season")
    expect(data.first["season"]).to eq semester.season
  end

describe "GET :show" do
    it 'can show a valid semesters' do
      semester = create(:semesters)
      get :show, id: semester.id, format: :json
      expect(response).to be_success
      data = JSON.parse(response.body)
      expect(data).to have_key("season")
      expect(data["season"]).to eq semester.season
    end
end

  describe 'POST :create' do
    before { @semester_attributes = attributes_for(:semesters)}
    it 'succeeds when all attributes are set' do
      post :create, semesters: @semester_attributes, format: :json
      expect(response).to have_http_status(:created)
      data = JSON.parse(response.body)
      expect(data).to have_key('season')
      expect(data["season"]).to eq @semester_attributes[:season]
    end

  end

  describe "PATCH :update" do
    before { @semester = create(:semesters) }
    it 'succeeds when data is changed' do
     patch :update, id: @semester.id, semesters:{season: "Spring"}, format: :json
     expect(response).to have_http_status(:no_content)
     expect(Semester.find(@semester.id).season).to eq 'Spring'
    end
  end

    describe 'DELETE :destroy' do
      it 'can delete an existing record' do
        semester = create(:semesters)
        delete :destroy, id: semester.id, format: :json
        expect(response).to have_http_status(:no_content)
        expect{Semester.find(semester.id)}.to raise_error ActiveRecord::RecordNotFound
      end

    end


end