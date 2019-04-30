require 'rails_helper'

describe 'GET /api/movies' do
  let!(:movies) { 5.times { FactoryBot.create(:movie) } <}
  let!(:specific_movie) { FactoryBot.create(:movie, title: 'Blade')}
  before {get '/api/movies'}
 
  it 'returns a 200 status' do
  expect(response.status).to eq 200
  end

  it 'returns a collection of movies' do
    expect(JSON.parse(response.body)['movies'].count).to eq 6
  end

  it 'returns "Blade" as the last movie' do
    expect(JSON.parse(response.body)['movies'].last['title']).to eq "Blade"
  end
end

