fn main() {
    // This is a simple Rust program to showcase the theme

    let greeting = "Hello, Rust!";
    let number = 42;

    println!("{}", greeting);
    println!("The number is: {}", number);

    let x = Some(10);
    match x {
        Some(v) => println!("We have a value: {}", v),
        None => println!("No value!"),
    }

    let add = |a, b| a + b;
    let result = add(5, 3);
    println!("Sum: {}", result);
}
