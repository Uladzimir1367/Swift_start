import Foundation

func calculateDeposit(initialAmount: Double, annualInterestRate: Double, years: Int) -> Double {
    let finalAmount = initialAmount * pow(1 + annualInterestRate / 100, Double(years))
    return finalAmount
    }

// Пример использования функции
let initialAmount = 1000.0  // Сумма вклада
let annualInterestRate = 5.0  // Годовой процент
let years = 3  // Срок вклада в годах

let finalAmount = calculateDeposit(initialAmount: initialAmount, annualInterestRate: annualInterestRate, years: years)
print("Итоговая сумма: \(finalAmount)")