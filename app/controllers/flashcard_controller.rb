class FlashcardController < ApplicationController
  
  def top
  end

  def play
    num = rand(Word.count)
    @word = Word.offset(num).first
    logger.debug(@word.inspect)
    respond_to do |format|
      format.html
      format.json {render json: @word}
    end
  end
  
end