

List<int> vec_sum(List<int> a, List<int> b) {
    final List<int> result = List<int>.filled(a.length, 0);
    for (var i = 0; i < a.length; i++) {
        result[i] = a[i] + b[i];
    }
    return result;
}


void main() {
    const int size = 10000000;
    
    // Create two lists (vectors) with random values
    final List<int> a = List.generate(size, (i) => i);
    final List<int> b = List.generate(size, (i) => i);
    
    // Create result vector and perform addition
    final List<int> result = vec_sum(a, b);
    
    // Print the last element
    print('Last element of the sum: ${result[size - 1]}');
}