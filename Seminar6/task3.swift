func generateArray(count: Int) -> [Int] {
   var result: [Int] = []
   var currentValue = 1

   for _ in 0..<count {
      result.append(currentValue)
      currentValue *= 2
   }

   return result
}

// Пример использования функции
let count = 5
let generatedArray = generateArray(count: count)
print("Сгенерированный массив: \(generatedArray)")
