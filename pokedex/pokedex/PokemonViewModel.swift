import Foundation

class PokemonViewModel: ObservableObject {
    @Published var pokemons = [Pokemon]()

    private let api = PokemonAPI()

    func loadPokemons() {
        api.fetchPokemonList { pokemons in
            DispatchQueue.main.async {
                self.pokemons = pokemons
            }
        }
    }
        }
    


//
//  PokemonViewModel.swift
//  pokedex
//
//  Created by adhiraj madan on 24/04/25.
//

