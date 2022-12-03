fn main() {
    println!("Lesson 2 - Conditions");

    let today = 17;
    let payday = 17;

    if today < payday {
      println!("Payday is coming!");
    } else if today == payday {
      println!("Payday!");
    } else {
      println!("Long time till payday!");
    }
}
