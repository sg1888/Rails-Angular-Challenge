class TransactionsController < ApplicationController
  load_and_authorize_resource
  def index
    @transactions = @transactions.includes(:customer) if request.format == 'json'
    render_default
  end
end
