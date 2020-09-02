class ProductsController < ApplicationController
    def index
        @cart = cart
        # byebug
    end
    def add
        cart = session[:cart] || []
        cart << params[:item]
        session[:cart] = cart
        redirect_to products_path
    end
end