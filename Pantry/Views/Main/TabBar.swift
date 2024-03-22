//
//  TabBar.swift
//  Pantry
//
//  Created by Alea Minar on 3/21/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("My Recipes", systemImage: "square.fill.text.grid.1x2")
                }
            
            NewRecipeView()
                .tabItem {
                    Label("New Recipe", systemImage: "pencil.and.ellipsis.rectangle")
                }
            
            PantryView()
                .tabItem {
                    Label("Pantry", systemImage: "rectangle.split.3x3.fill")
                }
            
            NewFoodView()
                .tabItem {
                    Label("New Food", systemImage: "camera")
                }
        }
    }
}
        
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
