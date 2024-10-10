enum PizzaType: String {
case margherita = "Margherita"
case pepperoni = "Pepperoni"
case hawaiian = "Hawaiian"
}

// Создание переменных с каждым видом пиццы
let margheritaPizza = PizzaType.margherita
let pepperoniPizza = PizzaType.pepperoni
let hawaiianPizza = PizzaType.hawaiian

// Пример использования
print("Вы выбрали пиццу: \(margheritaPizza.rawValue)")
print("Вы выбрали пиццу: \(pepperoniPizza.rawValue)")
print("Вы выбрали пиццу: \(hawaiianPizza.rawValue)")
