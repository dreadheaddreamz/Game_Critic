class CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments
    end

    def show
        comment = Comment.find_by_id(params[:id])
        render json: comment
    end

    def create
        @comments = Comment.new(content: params[:content], game_id: params[:game_id])
        if !@comments.save
          render json: {error: "We can't do that", status:400}          
        else 
          render json: @comments
        end
    end
    end

    def update
        comment = Comment.update(params[:id])
        comment.update
    end

    def destroy
        binding.pry
        comment = Comment.find_by(params[:id])
        comment.destroy
    end
