class FlashcardController < ApplicationController
  def top
  end

  def play
    @word = Word.offset(rand(Word.count)).first
  end
end
