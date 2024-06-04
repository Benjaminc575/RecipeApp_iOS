//
//  CategoryView.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 6/3/24.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var category: Category
    
    
    // Computed property
    var recipes: [Recipe] {
        return recipesVM.recipes.filter { $0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
            // $ refers to the wildcard. Explicit return
        }
        .navigationTitle(category.rawValue + "s")
    }
}

#Preview {
    CategoryView(category: Category.dessert)
        .environmentObject(RecipesViewModel())
}
