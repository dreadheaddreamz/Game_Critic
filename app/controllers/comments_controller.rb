class CommentsController < ApplicationController

    def create
        comment = Comment.create(params[:content])
        render json: comment
    end

    def update
        comment = Comment.update(params[:id])
        comment.update
    end

    def destroy
        comment = Comment.find_by(params[:id])
        comment.delete
    end
end
