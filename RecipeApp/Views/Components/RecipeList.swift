//
//  RecipeList.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 5/30/24.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            .padding(.horizontal)
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 10)], spacing: 10) {
                    ForEach(recipes) { recipe in
                        NavigationLink(destination: RecipeView(recipe: recipe)) {
                            RecipeCard(recipe: recipe)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.top)
    }
}

#Preview {
    RecipeList(recipes: Recipe.all)
}
