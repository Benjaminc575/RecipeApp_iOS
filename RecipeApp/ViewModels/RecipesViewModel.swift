//
//  RecipesViewModel.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 6/4/24.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all 
    }
}
