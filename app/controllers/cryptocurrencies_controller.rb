class CryptocurrenciesController < ApplicationController
  def search
    @cryptocurrency = Cryptocurrency.where('name_id LIKE ?', "#{params[:name_id]}%").first
    # byebug
    render json: @cryptocurrency
  end
end
