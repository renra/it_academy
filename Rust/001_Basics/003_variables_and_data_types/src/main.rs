fn main() {
  println!("Lesson 3 - Variables and Data Types");

  // i = signed
  // u = unsigned

  let today = 17u8;
  let payday = 17u8;

  let condition1: bool = today < payday;
  let condition2: bool = today == payday;

  let hours_per_month = 160f64;
  let hour_rate = 200.5f64;

  if condition1 {
    println!("Payday is coming!");
  } else if condition2 {
    println!("Payday!");
    println!("You should get {} today.", hours_per_month * hour_rate);
  } else {
    println!("Long time till payday!");
  }
}
