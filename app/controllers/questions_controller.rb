class QuestionsController < ApplicationController
  def ask
  end

  def answer
    message = params["answer"]
    if message == "I am going to work"
        @answer = 'Great!'
    elsif message.ends_with?("?")
        @answer = "Silly question, get dressed and go to work!"
    else
        @answer = "I don't care, get dressed and go to work!" 
    end    
  end  
end
