fn multiply_by_two(value: i32) -> i32 {
  value * 2
}

#[test]
fn test_multiply_10() -> Result<(), String> {
  if multiply_by_two(10) == 20 {
    Ok(())
  } else {
    Err("It's not 20".to_string())
  }
}

#[test]
#[should_panic]
fn test_panic() {
  panic!("I'm panicky");
}

fn main() {
    println!("{}", multiply_by_two(10));
}
