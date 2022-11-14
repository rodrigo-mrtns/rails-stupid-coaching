class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if @question.capitalize == 'I am going to work'
      'Great!'
    elsif @question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end

#   def answer
#     @question = params[:question]
#     if @question.capitalize == 'I am going to work'
#       @answer = 'Great!'
#     elsif @question.include? '?'
#       @answer = 'Silly question, get dressed and go to work!'
#     else
#       @answer = "I don't care, get dressed and go to work!"
#     end
#   end
# end
