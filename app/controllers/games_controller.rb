class GamesController < ApplicationController

    def index
        games = Game.all

        render json: games, include: [:comments]
    end

    def show
        game = Game.find_by_id(params[:id])
        if !game 
            render json: { error: "Not valid!", status: 400 }, status: 400
        else
        render json: game, include: [:comments]
        end
      end

      def create
        game = Game.new(game_params)
        if !game
            render json: { error: "Not valid game", status: 400 }, status: 400
        else
            render json: games, include: [:comments]
        end
      end

      private
      def game_params
        params.require(:game).permit(:title, :upvotes, :downvotes, :description, :image_url, :date)
      end

end
