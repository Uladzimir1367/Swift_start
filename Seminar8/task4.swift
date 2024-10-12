class Pizzeria {
    private var menu: Set<String>

    init(pizzas: [String]) {
        self.menu = Set(pizzas)
    }

    func addPizza(pizza: String) {
        self.menu.insert(pizza)
    }

    func getMenu() -> [String] {
        return Array(self.menu)
    }

    func showMenu() {
        for pizza in self.menu {
            print(pizza)
        }
    }
}
