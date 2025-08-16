import 'dart:typed_data';

Int32List vecSum(Int32List a, Int32List b) {
  final n = a.length;
  final result = Int32List(n);
  for (var i = 0; i < n; i++) {
    result[i] = a[i] + b[i];
  }
  return result;
}

void main() {
  const int size = 10_000_000;

  final a = Int32List(size);
  final b = Int32List(size);
  for (var i = 0; i < size; i++) {
    a[i] = i;
    b[i] = i;
  }

  final result = vecSum(a, b);
  print('Last element of the sum: ${result[size - 1]}');
}