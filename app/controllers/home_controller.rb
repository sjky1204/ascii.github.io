class HomeController < ApplicationController
  def main
    @head = Artii::Base.new.asciify("Hack Your Text")
  end

  def content
    @text1 = params[:input_text1]
    @text2 = params[:input_text2]
    @text3 = params[:input_text3]
    
    maple = Artii::Base.new
    @output1 = maple.asciify(@text1)
    @output2 = maple.asciify(@text2)
    @output3 = maple.asciify(@text3)
    
    q = Question.new
    q.font = params[:input_font]
    q.name = params[:input_text1]
    q.email = params[:input_text2]
    q.pnum = params[:input_text3]
    q.save
    
    @qall = Question.all
    
  end
end
