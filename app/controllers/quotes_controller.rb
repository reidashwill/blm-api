class QuotesController < ApplicationController

  def index 
    @quotes = Quote.all
    json_response(@quotes)
  end

  def search
    @quotes = Quote.search_by_term(params[:query])
    json_response(@quotes)
  end

  def show
    @quote = Quote.find(params[:id])
    json_response(@quote)
  end

  def create
    @quote = Quote.create!(quote_params)
    json_response(@quote, :created)
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update!(quote_params)
      render status: 200, json: {
      message: "This quote has been successfully updated"
    }
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    # api_key = params[:api_key]
    # authorized_key = "#{api_key}"
    # # do we need to create a .env file? is this a proper way to add API_KEY into our 'params'?
    if @quote.destroy 
      render status: 200, json: {
        message: "You've successfully DESTROYED this quote"
      }
    end
  end


  private

  def quote_params
    params.permit(:author, :content)
  end

end