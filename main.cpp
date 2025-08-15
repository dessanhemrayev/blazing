#include <iostream>
#include <vector>

constexpr size_t N = 10'000'000;

std::vector<int> sumVectors(const std::vector<int>& a, const std::vector<int>& b) {
    size_t n = std::min(a.size(), b.size());
    std::vector<int> result(n);
    for (size_t i = 0; i < n; ++i) {
        result[i] = a[i] + b[i];
    }
    return result;
}

int main() {
    std::vector<int> a(N), b(N), c(N);

    for (size_t i = 0; i < N; ++i) {
        a[i] = i;
        b[i] = i;
    }
    c = sumVectors(a, b);

    std::cout << "Sum: " << c[c.size() - 1] <<  std::endl;
    return 0;
}