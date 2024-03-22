//
//  PantryApp.swift
//  Pantry
//
//  Created by Alea Minar on 3/20/24.
//

import SwiftUI

@main
struct PantryApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
