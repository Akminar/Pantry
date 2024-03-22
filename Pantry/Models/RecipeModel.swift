//
//  RecipeModel.swift
//  Pantry
//
//  Created by Alea Minar on 3/21/24.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Peanut Butter Balls", image: "https://thecookiedoughdiaries.com/wp-content/uploads/2021/12/3-ingredient-peanut-butter-oatmeal-balls-5.jpg", description: "3 ingredient peanut butter balls that are quick, easy, gluten free, and a perfect snack", ingredients: "4 tablespoons honey\n1⅔ cup oats\n⅔ cup smooth peanut butter\n¼ cup semisweet chocolate chips", directions: "Add the peanut butter and honey to a medium mixing bowl. Pour in the oats, then stir together with a wooden spoon. Add in chocolate chips or other add ins if desired.\nIf the mixture is sticky, place it in the fridge for 10-15 minutes before rolling into balls.\nScoop out tablespoons of dough and roll them in your hands to form the balls. Store or enjoy!", datePublished: "01-07-22", url: "https://thecookiedoughdiaries.com/3-ingredient-peanut-butter-oatmeal-balls/")
    ]
}
