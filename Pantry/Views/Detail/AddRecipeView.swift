//
//  AddRecipeView.swift
//  Pantry
//
//  Created by Alea Minar on 3/21/24.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    @State private var name: String = ""
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
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
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem {
                    Button {
                        saveRecipe()
                        navigateToRecipe = true
                    } label: {
                        Label("Done", systemImage: "checkmark")
                            .labelStyle(.iconOnly)
                    }
                    .disabled(name.isEmpty)
                }
            })
            
            .sheet(isPresented: $navigateToRecipe) {
                RecipeView(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished}[0]).navigationBarBackButtonHidden(true)
            }
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        }
    }

struct AddRecipe_Preview: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, datePublished: "", url: "")
        recipesVM.addRecipe(recipe: recipe)
    }
}
