require 'rails_helper'
# require 'jwt'


describe "delete quote route" do
  #  before do
    
    # request.headers['Authorization'] = "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTE4MTI0MzB9.uNbvTpaQusxb6YdHtBgCuZ9KWolfH4eOtCUuQOo4jaE"
  #   admin = User.create!(email: 'admin2@test.com', password: 'password', password_confirmation: 'password')
  #   exec{
  #     curl -H "Content-Type: application/json" -X POST -d '{"email":"admin@test.com","password":"password"}' localhost:3000/authenticate
  #   }
  #  end


  it 'will delete a quote and return correct message' do
    test_quote = Quote.create!({author: 'test author', content: "test content"})
    delete "/quotes/#{test_quote.id}", headers:{Authorization: "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTE5NzY4NjJ9.8C1v_f-owLZ4b0ty5DoJCKUyanv12Vy6yHhI2qNyuo4"}
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


# DELETE '/quotes/91 HTTP/1.1'
# Host: localhost:3000
# Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTE4MTI0MzB9.uNbvTpaQusxb6YdHtBgCuZ9KWolfH4eOtCUuQOo4jaE

# curl -H "Auth1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTE4MTI0MzB9.uNbvTpaQusxb6YdHtBgCuZ9KWolfH4eOtCUuQOo4jaE" http://localhost:3000/quotes

# GET /quotes/91 HTTP/1.1
# Host: localhost:3000
# Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTE4MTI0MzB9.uNbvTpaQusxb6YdHtBgCuZ9KWolfH4eOtCUuQOo4jaE

# DELETE /quotes/91 HTTP/1.1
# Host: localhost:3000
# Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTE4MTI0MzB9.uNbvTpaQusxb6YdHtBgCuZ9KWolfH4eOtCUuQOo4jaE

# curl --location --request DELETE 'http://localhost:3000/quotes/91' \
# --header 'Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1OTE4MTI0MzB9.uNbvTpaQusxb6YdHtBgCuZ9KWolfH4eOtCUuQOo4jaE'

