//
//  CategoriesView.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 5/30/24.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            Text("Categories")
                .navigationTitle("Categories")
                
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    CategoriesView()
}
