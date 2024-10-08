var k = 9

for number in stride(from: 11, through: 49, by: 2) {
    print("Текущий номер: \(number), k: \(k)")
    if (number + k) % 2 == 0 {
        k += 2
        print("k увеличено до \(k)")
    } else {
        print("Next")
    }
}
