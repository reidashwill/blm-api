class QuotesController < ApplicationController

  def index 
    @quotes = Quote.search_by_term(params[:query])
    # @quotes = Quote.search(quote_params)
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