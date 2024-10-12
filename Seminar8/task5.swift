class Pizza {
   let name: String
   let ingredients: [String]

   init(name: String, ingredients: [String]) {
      self.name = name
      self.ingredients = ingredients
   }

   func description() -> String {
      return "\(name): \(ingredients.joined(separator: ", "))"
   }
}

class Pizzeria {
   private var menu: [Pizza] = []

   func addPizza(_ pizza: Pizza) {
      menu.append(pizza)
   }

   func showMenu() {
      for pizza in menu {
         print(pizza.description())
      }
   }
}

let myPizzeria = Pizzeria()

let margherita = Pizza(name: "Margherita", ingredients: ["tomato", "mozzarella", "basil"])
let pepperoni = Pizza(name: "Pepperoni", ingredients: ["tomato", "mozzarella", "pepperoni"])
let hawaiian = Pizza(name: "Hawaiian", ingredients: ["tomato", "mozzarella", "ham", "pineapple"])

myPizzeria.addPizza(margherita)
myPizzeria.addPizza(pepperoni)
myPizzeria.addPizza(hawaiian)

myPizzeria.showMenu()