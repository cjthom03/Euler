package main
import "fmt"

//  Problem 1
// Multiples of 3 and 5

// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.


func main() {
  fmt.Println(sum_of_multiples_of_3_or_5(10))
    // => 23

  fmt.Println(sum_of_multiples_of_3_or_5(1000))
    // => ??
}

func sum_of_multiples_of_3_or_5(max int) int {
  var sum int

  for i := 3; i < max; i ++ {
    if (i % 3 == 0) || (i % 5 == 0) {
      sum += i
    }    
  }
  
  return sum
}
