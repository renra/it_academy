fn main() {
    println!("Lesson 2 - Conditions");

    let today = 17;
    let payday = 17;
    let condition1 = today < payday;
    let condition2 = today == payday;

    if condition1 {
      println!("Payday is coming!");
    } else if condition2 {
      println!("Payday!");
    } else {
      println!("Long time till payday!");
    }
}
