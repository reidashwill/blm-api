require 'rails_helper'

describe "delete quote route" do
  it 'will delete a quote and return correct message' do
    test_quote = Quote.create!({author: 'test author', content: "test content", date: "test date", location: "test location"})
    delete "/quotes/#{test_quote.id}"
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)['message']).to eq ("You've successfully DESTROYED this quote")
  end

  it 'will return an error message if we try and delete an item that does not exist' do
    test_quote = Quote.create!({author: 'test author', content: "test content", date: "test date", location: "test location"})
    delete "/quotes/#{test_quote.id}"
    delete "/quotes/#{test_quote.id}"
    # expect(response).to have_http_status(404)
    expect(JSON.parse(response.body)['message']).to eq ("Couldn't find Quote with 'id'=#{test_quote.id}")
  end
end