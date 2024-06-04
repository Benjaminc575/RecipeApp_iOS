//
//  AddRecipeView.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 6/3/24.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //NewRecipeView()
        
        NavigationStack {
            //NewRecipeView()
            Form {
                Section(header: Text("Name")){
                    TextField("Recipe Name", text: $name )
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                            
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                 
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        dismiss()
                    } label: {
                    Label("Cancel", systemImage: "xmark")
                        .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem {
                    Button {
                        navigateToRecipe = true
                    } label: {
                        Label("Done", systemImage: "checkmark")
                            .labelStyle(.iconOnly)
                    }
                    .disabled(name.isEmpty)
                }
                
            })
            //.navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(isPresented: $navigateToRecipe) {
                //NewRecipeView()
                RecipeView(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished }[0])
                    .navigationBarBackButtonHidden(true)
            
            }
            // TODO: Fix New Recipe View Bug
        }
    
    }

}

#Preview {
    AddRecipeView()
        .environmentObject(RecipesViewModel())
}
