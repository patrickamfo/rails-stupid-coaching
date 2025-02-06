class QuestionsController < ApplicationController
  def ask
  end

  def answer
   @client_question = params[:question]
    if @client_question.end_with?("?")
      @message = "Silly question, get dressed and go to work!"
    elsif @client_question == "I am going to work"
      @message = "Great!"
    else
      @message = "I don't care, get dressed and go to work!"
    end
  end
end
