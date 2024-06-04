//
//  TabBar.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 5/30/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "menucard")
                }
            
            AddRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus.app")
                 
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
           
        }
    }
}

#Preview {
    TabBar()
        .environmentObject(RecipesViewModel())
}
