//import Foundation
import Foundation

class PokemonAPI {
    func fetchPokemonList(completion: @escaping ([Pokemon]) -> Void) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=100") else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
                   if let error = error {
                       print("❌ Network error:", error)
                       return
                   }

                   guard let data = data else {
                       print("❌ No data received")
                       return
                   }

            do {
                let response = try JSONDecoder().decode(PokemonResponse.self, from: data)
                DispatchQueue.main.async {
                    completion(response.results)
                }
            } catch {
                print("Decoding error:", error)
            }
        }.resume()
    }
}

//  PokemonAPI.swift
//  pokedex
//
//  Created by adhiraj madan on 24/04/25.
//

