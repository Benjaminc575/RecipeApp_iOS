//
//  HomeView.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 5/30/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("My Recipes")
            
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView()
        .environmentObject(RecipesViewModel())
}
