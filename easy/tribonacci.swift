func tribonacci(n: Int) -> Int {
    guard n > 1 else {
        return n
    }

    guard n > 2 else {
        return 1
    }

    var (a, b, c) = (0, 1, 1)
    for _ in 3...n {
        (a, b, c) = (b, c, a + b +  c)
    }

    return c
} 

var result = tribonacci(n: 25)
print(result)