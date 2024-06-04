//
//  RecipeAppApp.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 5/30/24.
//

import SwiftUI

@main
struct RecipeAppApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
            
        }
    }
}
