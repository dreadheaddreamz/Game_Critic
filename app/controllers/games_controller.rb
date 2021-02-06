class GamesController < ApplicationController

    def index
        @games = Game.all

        render json: @games, include: [:comments]
    end

    def show
        @games = Game.find_by_id(params[:id])
        render json: @games
    end

    def create
        @games = Game.new(game_params)
        if @games.save
            render json: @games, include: [:comments]          
        else 
            render json: {error: "We cant do that", status:400}
        end
    end


      private
      def game_params
        params.require(:games).permit(:game_id, :title, :upvotes, :downvotes, :description, :image_url, :date)
      end

end
