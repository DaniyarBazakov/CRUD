class PokemonsController < ApplicationController
    def index # all pokemons
        @pokemons = Pokemon.all
    end

    def show
    end

    def new
    end

    def edit
    end

    def update
    end

    def destroy
    end
end