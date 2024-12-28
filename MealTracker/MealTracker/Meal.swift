//
//  Meal.swift
//  MealTracker
//
//  Created by VR on 01/10/24.
//

import Foundation

struct Food {
    var name: String
    var description: String
}

struct Meal {
    var name: String
    var foods: [Food]
}

var meals: [Meal] = [Meal(name: "Breakfast", foods: [Food(name: "Idli", description: "Steamed rice and urad dal batter served with coconut chutney"), Food(name: "Pongal", description: "Boiled rice and moong dal batter served with coconut chutney"), Food(name: "Chole Bhature", description: "Boiled spiced channa with maida pooris")]), Meal(name: "Lunch", foods: [Food(name: "Rajma Chaval", description: "Steamed rice with spiced rajma beans"), Food(name: "Biriyani", description: "Spiced rice with meat and vegetables"), Food(name: "Dal Makhani", description: "Aromatic dal with spices")]), Meal(name: "Dinner", foods: [Food(name: "Naan", description: "A soft and fluffy bread"), Food(name: "Pav Bhaji", description: "A spicy vegetable curry"), Food(name: "Chowmein", description: "Noodles with a variety of vegetables")])]
