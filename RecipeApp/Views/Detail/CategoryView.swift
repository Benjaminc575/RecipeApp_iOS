//
//  CategoryView.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 6/3/24.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    
    // Computed property
    var recipes: [Recipe] {
        return Recipe.all.filter { $0.category == category.rawValue}
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
}
