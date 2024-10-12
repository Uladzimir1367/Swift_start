// Создаем класс Pizzeria:

class Pizzeria {
// Приватная переменная для хранения меню пицц
    private var menu: [Pizza]

// Инициализатор, который принимает массив пицц
    init(pizzas: [Pizza]) {
        self.menu = pizzas
    }

// Метод для добавления новой пиццы в меню
    func addPizza(_ pizza: Pizza) {
        menu.appendpizza
    }

// Метод для отображения текущего меню
    func showMenu() {
        for pizza in menu {
            print(pizza.description())
        }
    }
}

// Создаем структуру Pizza для представления пиццы:

struct Pizza {
    var name: String
    var ingredients: [String]

// Метод для получения описания пиццы
    func description() -> String {
        return "\(name): \(ingredients.joined(separator: ", "))"
    }
}