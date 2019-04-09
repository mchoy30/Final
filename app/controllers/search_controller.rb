# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    @query = params[:q]
    # @category = params[:category]
    @category = Category.find(params[:category])
    @products = @category.products.where('name LIKE ?', "%#{@query}%")
    # @products = Product
  end
end
