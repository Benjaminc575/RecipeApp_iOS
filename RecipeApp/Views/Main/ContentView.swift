//
//  ContentView.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 5/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
        //new coment
        //.padding()
    }
}

#Preview {
    ContentView()
        .environmentObject(RecipesViewModel())
}
