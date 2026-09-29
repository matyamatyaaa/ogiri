class AnswersController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @topic.answers.create(answer_params)
    redirect_to topic_path(@topic)
  end

  private

  def answer_params
    params.require(:answer).permit(:body, :author)
  end
end
