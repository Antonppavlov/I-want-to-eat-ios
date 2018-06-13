//
//  FoodIntake.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 13.06.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import Foundation

struct MenuForTheDay: Codable {
    let caloriesDay: CaloriesDay
    let foodIntakeList: [FoodIntakeList]
}

struct CaloriesDay: Codable {
    let calorie: Int?
    let proteins, fats, carbohydrates: Double?
    let calories: Double?
}

struct FoodIntakeList: Codable {
    let caloriesIntake: CaloriesDay
    let name: String
    let foods: [Food]
}

struct Food: Codable {
    let name, foodType, foodSubType: FoodSubType
    let recipe: Recipe
    let foodProducts: [FoodProduct]
}

struct FoodProduct: Codable {
    let product: Product
    let value: Double?
}

struct Product: Codable {
    let name, type: FoodSubType
    let data: CaloriesDay
}

struct FoodSubType: Codable {
    let nameRu: String
}

struct Recipe: Codable {
    let descriptionRu: String
}
