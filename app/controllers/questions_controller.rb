class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "No twitter account given!"
    elsif @question.nil?

    else
      @answer = twitter_client.user_timeline(@question)
    end
  end
end
