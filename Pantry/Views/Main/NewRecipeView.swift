//
//  NewRecipeView.swift
//  Pantry
//
//  Created by Alea Minar on 3/21/24.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            Button("Add recipe manually") {
                showAddRecipe = true
            }
                .navigationTitle("New Recipe")
                .sheet(isPresented: $showAddRecipe, content: {
                    AddRecipeView()
                })
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
