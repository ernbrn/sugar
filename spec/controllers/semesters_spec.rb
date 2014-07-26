require 'rails_helper'

describe SemestersController do

  it 'GET :index' do
    semester = create(:semester)
    get :index, format: :json
    expect(response).to be_success
    data = JSON.parse(response.body)
    expect(data.first).to have_key("season")
    expect(data.first["season"]).to eq semester.season
  end

describe "GET :show" do
    it 'can show a valid semester' do
      semester = create(:semester)
      get :show, id: semester.id, format: :json
      expect(response).to be_success
      data = JSON.parse(response.body)
      expect(data).to have_key("season")
      expect(data["season"]).to eq semester.season
    end

  end

end