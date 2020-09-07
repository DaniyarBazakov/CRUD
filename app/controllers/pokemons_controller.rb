class PokemonsController < ApplicationController
    before_action :find_pokemon, only: [:show, :edit, :update, :destroy]
    def index # all pokemons
        @pokemons = Pokemon.all
    end

    def show; end

    def new
        @pokemon = Pokemon.new
    end

    def create
        @pokemon = Pokemon.new(pokemon_params)
        @pokemon.save
        redirect_to pokemon_path(@pokemon)
    end

    def edit; end

    def update
        @pokemon.update(pokemon_params)
        redirect_to pokemon_path(@pokemon)
    end

    def destroy
        @pokemon.destroy
        redirect_to pokemons_path
    end

    private
    def pokemon_params
        params.require(:pokemon).permit(:Name, :Type_1, :Type_2, :Total, :HP, :Attack, :Defence, :Sp_Atk, :Sp_Def, :Speed, :Generation, :Legendary)
    end

    def find_pokemon
        @pokemon = Pokemon.find(params[:id])
    end
end
