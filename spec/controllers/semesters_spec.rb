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
end