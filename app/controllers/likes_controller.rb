class LikesController < ApplicationController
    def create
        @answer = Answer.find(params[:answer_id])
        @answer.likes.create(level: params[:level])
        redirect_to topic_path(@answer.topic)
    end
end
