//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Benjamin Cardenas on 5/30/24.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    
    
    var id: String { self.rawValue }
    case breakcast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
    
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
    
}

extension Recipe {
    static let all: [Recipe] = [
    Recipe(name: "Chicken Fajita Recipes", image: "https://thefoodcharlatan.com/wp-content/uploads/2024/02/Chicken-Fajitas-Recipe-18.jpg", description: "These Chicken Fajitas are loaded with juicy and perfectly spiced chicken sweet bell pepper, and onions. ", ingredients: "2 Large boneless skinless chicken breast\n1 4 Tbsp of olive oil ,divided\n1 2 Tbsp lime juice\n1 1 tbsp ground chili powder\n1 1 tsp ground chili powder\n1 1 tsp paprika\n1 1 tsp onion powder\n1 1 tsp sea salt\n1 1/2 tsp ground black pepper\n1 3 Bell peppers, Red, Yellow and Green, sliced into 1/4 inch thick slices\n1 1 medium onion, thiny sliced\n1 8 small flour tortillas, toasted or warmed\n1", directions: "In a mixing bowl add 2 Tbsp oil, 2 Tbsp lime juice, and all of the seasonings: chili powder, cumin, paprika, onion powder, garlic powder, salt, and pepper. Stir to combine. Cut chicken breasts in half lengthwise and add cutlets to the seasoning mix, turning to evenly coat. Set that aside while you prep the remaining veggies. You can marinate for up to 4 hours. Cut bell peppers and onions into 1/4” thin slices, cutting with the grain. Set a large heavy skillet (such as cast iron) over medium heat. Add 1 Tbsp oil then add chicken in a single layer and sear for 3-5 minutes per side or until browned and cooked through to 165˚F in the center on an instant-read thermometer. Cook in batches if needed. Transfer chicken to a cutting board and let it rest while you cook the vegetables. In the same skillet over medium heat, add 1 Tbsp oil then add the onion and bell peppers and sauté until softened and browned in spots, about 5-6 minutes, stirring frequently. Season with salt and pepper to taste. While the veggies are cooking, slice the chicken into strips against the grain. When the veggies are done, add the chicken back to the pan, stir to combine, and remove from heat. Serve over warmed tortillas with a squeeze of fresh lime juice, garnished with cilantro and your favorite toppings.", category: "Main", datePublished: "2023-29-4", url: "https://natashaskitchen.com/chicken-fajitas-recipe/")
  
    
    
    //Recipe(name: <#T##String#>, image: <#T##String#>, description: <#T##String#>, ingredients: <#T##String#>, directions: <#T##String#>, category: <#T##Category.RawValue#>, datePublished: <#T##String#>, url: <#T##String#>),
    
    
    
    ]
}
