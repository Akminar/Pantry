//
//  NewFoodView.swift
//  Pantry
//
//  Created by Alea Minar on 3/21/24.
//

import SwiftUI

struct NewFoodView: View {
    var body: some View {
        NavigationView {
            Text("New Item")
                .navigationTitle("New Item")
        }
    }
}

struct NewFoodView_Previews: PreviewProvider {
    static var previews: some View {
        NewFoodView()
    }
}
