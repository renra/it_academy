const SENTENCE: &str = "Na začátku bylo slovo";

fn main() {
  println!("Lesson 5 - usize and isize");

  let address: usize = 12;

  println!("{:p}", SENTENCE);

  println!("{}", std::mem::size_of::<&usize>());
  println!("{}", std::mem::size_of_val(&address));

  println!("{}", std::mem::size_of::<&str>());
  println!("{}", std::mem::size_of_val(SENTENCE));
  println!("{}", SENTENCE.len());   // length
  println!("{}", SENTENCE.chars().count());
}
