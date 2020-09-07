class PokemonsController < ApplicationController
    def index # all pokemons
        @pokemons = Pokemon.all
    end

    def show
        @pokemon = Pokemon.find(params[:id])
    end

    def new
        @pokemon = Pokemon.new
    end

    def create
        @pokemon = Pokemon.new(pokemon_params)
        @pokemon.save
        redirect_to pokemon_path(@pokemon)
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
    end

    def update
        @pokemon = Pokemon.find(params[:id])
        @pokemon.update(pokemon_params)
        redirect_to pokemon_path(@pokemon)
    end

    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
        redirect_to pokemons_path
    end

    private
    def pokemon_params
        params.require(:pokemon).permit(:Name, :Type_1, :Type_2, :Total, :HP, :Attack, :Defence, :Sp_Atk, :Sp_Def, :Speed, :Generation, :Legendary)
    end
end
