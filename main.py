def vec_sum(a:list[int],b:list[int]):
    return [a[i]+b[i] for i in range(len(a))]

if __name__ == "__main__":
    a = []
    b = []
    for i in range(10_000_000):
        a.append(i)
        b.append(i)
    print(vec_sum(a, b)[-1])