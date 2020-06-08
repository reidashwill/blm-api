require 'rails_helper'

describe 'update quote route' do
  it 'will update a quote and return correct message' do
    patch '/quotes/27', params: {:author => 'Test Author'}
    expect(JSON.parse(response.body)['message']).to eq ("This quote has been successfully updated")
    expect(response).to have_http_status(200)
  end

  it 'will return an error message when any fields are left empty' do
    patch '/quotes/27', params: {:author => nil}
    expect(JSON.parse(response.body)['message']).to eq ("Validation failed: Author can't be blank")
    expect(response).to have_http_status(422)
  end
end