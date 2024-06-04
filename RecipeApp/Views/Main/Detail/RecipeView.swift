//
//  RecipeView.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 5/31/24.
//

import SwiftUI

struct RecipeView: View {
    
    var recipe: Recipe
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFill()
                    
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                
            }
            .scaledToFill()
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            .clipped()
            .frame(height: 100)
            
            VStack(spacing: 50) {
                Text(recipe.name)
                    .padding(.top, 250)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30) {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    }
                
                    if !recipe.ingredients.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Ingredients")
                                .font(.headline)
                            
                            Text(recipe.ingredients)
                            
                            
                        }
                    }
                    
                    if !recipe.directions.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Directions")
                                .font(.headline)
                            
                            Text(recipe.directions)
                            
                            
                        }
                    }
                        
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            
            
            //.scaledToFit()
        }
        .ignoresSafeArea(.container, edges: .top)
    
    }
    
}

#Preview {
    RecipeView(recipe: Recipe.all[0])
}
