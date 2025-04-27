//
//  ContentView.swift
//  pokedex
//
//  Created by adhiraj madan on 24/04/25.
//
import SwiftUI


struct ContentView: View {
    @StateObject var viewModel = PokemonViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.pokemons) { pokemon in
                Text(pokemon.name.capitalized)
            }
            .navigationTitle("Pokédex")
        }
        .onAppear {
            viewModel.loadPokemons()
        }
    }
}

