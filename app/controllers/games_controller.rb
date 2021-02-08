class GamesController < ApplicationController

    def index
        @games = Game.all

        render json: @games
    end

    def show
        @games = Game.find_by_id(params[:id])
        render json: @games
    end

    def create
        @games = Game.new(game_params)
        if !@games.save
          render json: {error: "We can't do that", status:400}          
        else 
          render json: @games
        end
    end

    def destroy
        @games = Game.find_by_id(params[:id])
        if !@games
          render json: { error: "Not valid input!", status: 400 }, status: 400
        else
          @games.destroy
          render json: @games
        end
      end

      private
      def game_params
        params.require(:game).permit(:id, :title, :upvotes, :downvotes, :description, :image_url, :date)
      end

end
