// Словарь с видами чая и их стоимостью
let teaPrices: [String: Double] = [
"Green Tea": 2.5,
"Black Tea": 3.0,
"Oolong Tea": 4.0,
"Herbal Tea": 3.5
]

// Массив с заказами
let orders = ["Green Tea", "Black Tea", "Oolong Tea", "Herbal Tea", "Green Tea"]

// Обработка заказов
for (index, tea) in orders.enumerated() {
    if let price = teaPrices[tea] {
        print("Покупатель \(index + 1): \(tea) - \(price) USD")
    } else {
        print("Покупатель \(index + 1): \(tea) - Цена не найдена")
    }
}