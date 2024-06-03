//
//  AddRecipeView.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 6/3/24.
//

import SwiftUI

struct AddRecipeView: View {
    // states will only be used in this view.
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
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
                    //binding
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
                    Button{
                        
                    } label: {
                    Label("Done", systemImage: "checkmark")
                        .labelStyle(.iconOnly)
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    AddRecipeView()
}
