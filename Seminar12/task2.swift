class Table {
   let seats: Int

   init(seats: Int) {
      self.seats = seats
   }

   func canAccommodate(guests: Int) -> Bool {
      return guests <= seats
   }
}

// Примеры использования:
let tableForFour = Table(seats: 4)

let result1 = tableForFour.canAccommodate(guests: 3) // true
let result2 = tableForFour.canAccommodate(guests: 5) // false

print("Can accommodate 3 guests: \(result1)") // Вывод: Can accommodate 3 guests: true
print("Can accommodate 5 guests: \(result2)") // Вывод: Can accommodate 5 guests: false
