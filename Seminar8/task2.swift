// 1. Создаем перечисление для добавок:

enum Topping: String {
   case pepperoni = "Pepperoni"
   case tomatoes = "Tomatoes"
   case cheese = "Cheese"
   case mushrooms = "Mushrooms"
   case olives = "Olives"
}

// 2. Создаем вложенное перечисление для вида пиццы:

struct Pizza {
   enum PizzaType: String {
      case margherita = "Margherita"
      case pepperoni = "Pepperoni"
      case hawaiian = "Hawaiian"
      case veggie = "Veggie"
   }

// 3. Добавляем свойства для стоимости, типа теста и добавок:

   var price: Double
   var type: PizzaType
   var isThickCrust: Bool
   var toppings: [Topping]

// 4. Создаем инициализатор для структуры Pizza:

   init(price: Double, type: PizzaType, isThickCrust: Bool, toppings: [Topping]) {
      self.price = price
      self.type = type
      self.isThickCrust = isThickCrust
      self.toppings = toppings
   }

// 5. Добавляем метод для описания пиццы:

   func description() -> String {
      let crustType = isThickCrust ? "Thick Crust" : "Thin Crust"
      let toppingsList = toppings.map { $0.rawValue }.joined(separator: ", ")
      return "\(type.rawValue) - \(crustType) - $\(price) - Toppings: \(toppingsList)"
   }
}

// Пример использования структуры Pizza:

let myPizza = Pizza(price: 12.99, type: .pepperoni, isThickCrust: true, toppings: [.pepperoni, .cheese, .tomatoes])
print(myPizza.description())

