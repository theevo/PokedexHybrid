//
//  PokemonViewController.swift
//  PokedexHybrid
//
//  Created by theevo on 3/24/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import UIKit

class PokemonViewController: UIViewController, UISearchBarDelegate {
    
    // MARK: - IBOutlets

    @IBOutlet weak var pokemonSearchBar: UISearchBar!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var abilitiesLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    
    // MARK: - Properties
    var pokemon: Pokemon? {
        didSet{
            updateViews()
        }
    }
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonSearchBar.delegate = self
    }
    
    
    // MARK: - Methods
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchTerm = searchBar.text?.lowercased() else { return }
        
        PokemonController.fetchPokemon(forSearchTerm: searchTerm) { (pokemon) in
            self.pokemon = pokemon
        }
    }
    
    func updateViews() {
        guard let pokemon = pokemon else { return }
        
        DispatchQueue.main.async {
            self.nameLabel.text = pokemon.name
            self.idLabel.text = "Id: \(pokemon.identifier)"
            self.abilitiesLabel.text = "Abilities: \(pokemon.abilities)"
        }
    }

}
