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
            List {
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }
                    
                }
            }
                .navigationTitle("Categories")
                
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    CategoriesView()
}
