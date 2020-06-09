require 'rails_helper'
require 'jwt'

describe "delete quote route" do
    # before(:each) {
    #   curl -H {"'Content-Type: application/json' -X POST -d '{'email':'test@test.com','password':'password'}' http://localhost:3000/authenticate"
    #   }
    # }

    
  it 'will delete a quote and return correct message' do
    test_quote = Quote.create!({author: 'test author', content: "test content"})
    delete "/quotes/#{test_quote.id}"
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)['message']).to eq ("You've successfully DESTROYED this quote")
  end

  # it 'will return an error message if we try and delete an item that does not exist' do
  #   test_quote = Quote.create!({author: 'test author', content: "test content"})
  #   delete "/quotes/#{test_quote.id}"
  #   delete "/quotes/#{test_quote.id}"
  #   # expect(response).to have_http_status(404)
  #   expect(JSON.parse(response.body)['message']).to eq ("Couldn't find Quote with 'id'=#{test_quote.id}")
  # end
end

# curl -H "Auth1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTE4MTI0MzB9.uNbvTpaQusxb6YdHtBgCuZ9KWolfH4eOtCUuQOo4jaE" http://localhost:3000/quotes