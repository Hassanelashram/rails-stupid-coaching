class PagesController < ApplicationController
  def index
    redirect_to answer_path if params[:question]
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    if your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
