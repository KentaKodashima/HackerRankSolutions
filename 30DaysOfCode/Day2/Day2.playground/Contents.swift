import UIKit

// Complete the solve function below.
func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
  let tip = meal_cost * (Double(tip_percent) / 100)
  let tax = meal_cost * (Double(tax_percent) / 100)
  let total = Int(round(meal_cost + tip + tax))
  print(total)
}
