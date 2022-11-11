class StocksController < ApplicationController

    def show 
        @stock = Stock.find(params[:id])
    end

    def index
        @stocks = Stock.all
    end


end