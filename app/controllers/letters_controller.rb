class LettersController < ApplicationController
  def new
    @letter = Letter.new
  end

  def create
    @letter = Letter.new(letter_params)
    
    if @letter.deliver
      redirect_to new_letter_path
    else
      render :new 
    end
  end

  private

    def letter_params
      params.require(:letter).permit(:body, :sender)
    end
end