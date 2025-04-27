import Foundation


struct Pokemon: Codable, Identifiable {
    var id: String { name }

    let name: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case name, url
    }
}

struct PokemonResponse: Codable {
    let results: [Pokemon]
}

//
//  Pokemon.swift
//  pokedex
//
//  Created by adhiraj madan on 24/04/25.
//

