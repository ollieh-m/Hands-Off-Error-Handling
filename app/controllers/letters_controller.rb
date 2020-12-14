class LettersController < ApplicationController
  def index
    @letters = Letter.recent_first
  end

  def new
    @letter = Letter.new
  end

  def create
    @letter = Letter.new(letter_params)

    if @letter.deliver
      redirect_to success_path, turbolinks: "advance"
    else
      render :new
    end
  end

  private

    def letter_params
      params.require(:letter).permit(:body, :sender)
    end

    def success_path
      letters_path(highlight: dom_id(@letter))
    end
end
