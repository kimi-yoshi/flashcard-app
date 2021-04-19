class TopController < ApplicationController

  def home
    
  end
  
  def index
    unknownWord = params[:word]
    agent = Mechanize.new
    page = agent.get("https://ejje.weblio.jp/content/#{unknownWord}")
    title = page.search('#h1Query').inner_text
    meaning = page.search('.content-explanation').inner_text
    @word = Word.new
    @word.title = title
    @word.meaning = meaning
    @word.save
    redirect_to "/top"
  end

  def show
    @words = Word.all
  end

end