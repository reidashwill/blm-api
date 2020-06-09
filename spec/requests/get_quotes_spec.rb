require 'rails_helper'

describe 'get all quotes route' do
  before {get '/quotes'}

  it 'returns all quotes' do
    expect(JSON.parse(response.body).size).to eq(47)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get individual quote route" do
  
  it 'returns a quote' do
    get '/quotes/91'
    expect(JSON.parse(response.body)['content']).to eq("Don’t be in a hurry to condemn because he doesn’t do what you do or think as you think or as fast. There was a time when you didn’t know what you know today.")
  end

  it 'returns an error when fetching a quote that does not exist' do
    get '/quotes/1'
    expect(response).to have_http_status(404)
    expect(JSON.parse(response.body)['message']).to eq("Couldn't find Quote with 'id'=1")
  end
end