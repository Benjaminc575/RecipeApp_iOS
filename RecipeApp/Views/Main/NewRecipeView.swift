//
//  NewRecipeView.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 5/30/24.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            Button("Add Recipe Manually"){
                showAddRecipe = true
            }
            .navigationTitle("New Recipes")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe) {
            AddRecipeView()
        }
    }
}

#Preview {
    NewRecipeView()
}
