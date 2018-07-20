// To parse the JSON, add this file to your project and do:
//
//   let menuForTheDay = try? JSONDecoder().decode(MenuForTheDay.self, from: jsonData)

import Foundation

struct MenuForTheDay: Codable {
    let cpfc: Cpfc
    let foodIntakeList: [FoodIntakeList]
}

struct Cpfc: Codable {
    let calories, proteins, fats, carbohydrates: Double
}

struct FoodIntakeList: Codable {
    let name: String
    let foods: [Food]
    let cpfc: Cpfc
}

struct Food: Codable {
    let id: Int
    let name, foodType, foodSubType: FoodSubType
    let recipe: Recipe
    let foodProducts: [FoodProduct]
}

struct FoodProduct: Codable, Equatable{
    static func == (lhs: FoodProduct, rhs: FoodProduct) -> Bool {
        return lhs.product.name.nameRu == rhs.product.name.nameRu
    }
    
    let product: Product
    let value: Int
}

struct Product: Codable {
    let id: Int
    let name, type: FoodSubType
    let data: Cpfc
}

struct FoodSubType: Codable {
    let nameRu: String
}

struct Recipe: Codable {
    let descriptionRu: String
}
