protocol MenuItem {
    var description: String { get }
}

struct Pizza: MenuItem {
    let name: String
    let ingredients: [String]

    var description: String {
        return "\(name): \(ingredients.joined(separator: ", "))"
    }
}

struct Fries: MenuItem {
    let size: String
    let price: Double

    var description: String {
        return "Fries (\(size)): $\(price)"
    }
}

class Pizzeria {
    private var menu: [MenuItem] = []

    func addMenuItem(_ item: MenuItem) {
        menu.append(item)
    }

    func showMenu() {
        for item in menu {
            print(item.description)
        }
    }
}

let margherita = Pizza(name: "Margherita", ingredients: ["Tomato", "Mozzarella", "Basil"])
let fries = Fries(size: "Large", price: 2.99)

let pizzeria = Pizzeria()
pizzeria.addMenuItem(margherita)
pizzeria.addMenuItem(fries)

pizzeria.showMenu()