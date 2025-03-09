class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def index
    @quotes = Quote.all
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to quotes_path, notice: "Quote was successfully created."
    else
      render :new
    end
  end

  def new
    @quote = Quote.new
  end

  def edit

  end

  def show

  end

  def update
    if @quote.update(quote_params)
      redirect_to quotes_path, notice: "Quote was updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @quote.destroy
    redirect_to quote_path, notice: "Quote was successfully destroyed."
  end

  private

  def set_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:name)
  end
end
