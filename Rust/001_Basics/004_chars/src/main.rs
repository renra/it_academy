// string slice
const SENTENCE: &str = "ýa";

fn main() {
  println!("Lesson 4 - Chars");

  let letter: char = 'a';

  println!("{letter}");
  println!("{}", std::mem::size_of::<char>());
  println!("{}", std::mem::size_of_val(&letter));
  println!("{SENTENCE}");
  println!("{}", std::mem::size_of::<&str>());
  println!("{}", std::mem::size_of_val(SENTENCE));
}
