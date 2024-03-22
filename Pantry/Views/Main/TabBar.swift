//
//  TabBar.swift
//  Pantry
//
//  Created by Alea Minar on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    
    let icons = [
        "house",
        "rectangle.split.3x3",
        "book"
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch selectedIndex{
                case 0:
                    NavigationView {
                        VStack {
                            Text("First Screen")
                        }
                        .navigationTitle("Home")
                    }
                case 1:
                    NavigationView {
                        VStack {
                            Text("Second Screen")
                        }
                        .navigationTitle("Pantry")
                    }
                default:
                    NavigationView {
                        VStack {
                            Text("Third Screen")
                        }
                        .navigationTitle("Recipes")
                    }
                }
            }
            
            Divider()
                .padding(.bottom, 10)
            
            HStack {
                ForEach(0..<3, id: \.self) { number in
                    Spacer()
                    Button(action: {
                        self.selectedIndex = number
                    }, label: {
                        Image(systemName: icons[number])
                            .font(.system(
                                    size: 25,
                                    weight: .regular,
                                    design: .default))
                            .foregroundColor(selectedIndex == number ? Color(.label) : Color(UIColor.lightGray))
                    })
                    Spacer()
                }
            }
        }
    }
}

