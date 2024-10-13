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

protocol OpenClose {
    func open()
    func close()
}

enum Position {
    case cashier
    case cook
}

struct Employee {
    let name: String
    let salary: Double
    let position: Position
}

class Pizzeria {
    private var menu: [MenuItem] = []
    private var employees: [Employee] = []

    func addMenuItem(_ item: MenuItem) {
        menu.append(item)
    }

    func showMenu() {
        for item in menu {
            print(item.description)
        }
    }

    func addEmployee(_ employee: Employee) {
        employees.append(employee)
    }

    func showEmployees() {
        for employee in employees {
            print("Name: \(employee.name), Salary: \(employee.salary), Position: \(employee.position)")
        }
    }
}

extension Pizzeria: OpenClose {
    func open() {
        print("Pizzeria is now open!")
    }

    func close() {
        print("Pizzeria is now closed!")
    }
}

let margherita = Pizza(name: "Margherita", ingredients: ["Tomato", "Mozzarella", "Basil"])
let fries = Fries(size: "Large", price: 2.99)

let pizzeria = Pizzeria()
pizzeria.addMenuItem(margherita)
pizzeria.addMenuItem(fries) // Corrected line

let employee1 = Employee(name: "John Doe", salary: 3000.0, position: .cashier)
let employee2 = Employee(name: "Jane Smith", salary: 3500.0, position: .cook)

pizzeria.addEmployee(employee1)
pizzeria.addEmployee(employee2)

pizzeria.open()
pizzeria.showMenu()
pizzeria.showEmployees()
pizzeria.close()