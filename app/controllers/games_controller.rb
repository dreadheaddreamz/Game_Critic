class GamesController < ApplicationController

    def index
        games = Game.all

        render json: games, include: [:comments]
    end

    def show
        games = Game.find_by_id(params[:id])
        render json: games, include: [:comments]
    end

    def create
        games = Game.new(game_params)
        if games.save
          render json: games, include: [:comments]         
        else 
          render json: {error: "We can't do that", status:400} 
        end
    end

    def destroy
        games = Game.find_by(game_params)
        game_params.destroy
      end

      private
      def game_params
        params.require(:game).permit(:id, :title, :upvotes, :downvotes, :description, :image_url, :date)
      end

end
