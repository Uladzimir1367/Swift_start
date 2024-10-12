func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
   return a - b
}

// Примеры использования:
let intResult = subtract(10, 3) // Работает с Int
let doubleResult = subtract(10.5, 3.2) // Работает с Double

print("Int result: \(intResult)") // Вывод: Int result: 7
print("Double result: \(doubleResult)") // Вывод: Double result: 7.3