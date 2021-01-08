class GamesController < ApplicationController

    def index
        games = Games.all

        render json: games, include: [:comments]
    end
end
