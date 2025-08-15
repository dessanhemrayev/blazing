fn sum_vec(a: Vec<i32>, b: Vec<i32>) -> Vec<i32> {

    let mut result = Vec::with_capacity(a.len());
    for i in 0..a.len() {
        result.push(a[i] + b[i]);
    }
    result
}

fn main() {
    let mut a = Vec::with_capacity(10_000_000);
    let mut b = Vec::with_capacity(10_000_000);

    for i in 0..10_000_000 {
        a.push(i);
        b.push(i);
    }

    let total = sum_vec(a, b);
    println!("Sum: {:?}", total[total.len() - 1]);
}