class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params["question"]
    if @question == "I am going to work"
      @result = "Great!"
    elsif @question.split(//).include? "?"
      @result = "Silly question, get dressed and go to work!"
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
