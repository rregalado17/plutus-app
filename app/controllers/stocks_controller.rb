class StocksController < ApplicationController
    before_action :set_stock, only: [:show, :edit, :update, :destroy]
    before_action :require_user, except: [:show, :index]
    before_action :require_same_user, only: [:edit, :update, :destroy]

    def show 

    end

    def index
        @stocks = Stock.paginate(page: params[:page], per_page: 3)
    end

    def new
        @stock = Stock.new

    end

    def edit
    end

    def create
        @stock = Stock.new(stock_params)
        @stock.user = current_user
        if @stock.save
            flash[:notice] = "Stock created successfully!"
            redirect_to @stock
        else
            render "new"
        end
    end

    def update
        if @stock.update(stock_params)
            flash[:notice] = "Stock was updated successfully"
        else
            render 'edit'
        end
    end

    def destroy
        @stock.destroy
        redirect_to stocks_path

    end

    private 

    def set_stock
        @stock = Stock.find(params[:id])
    end

    def stock_params
        params.require(:stock).permit(:name, :description)
    end

    def require_same_user
        if current_user != @stock.user && !current_user.admin?
            flash[:alert] = "You can only edit your own stock"
            redirect_to @stock
        end
    end

end