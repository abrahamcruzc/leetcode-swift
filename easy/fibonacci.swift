func fibonacci(n: Int) -> Int {
    guard n > 1 else {
        return n
    }

    var a = 0, b = 1
    for _ in 2...n {
        (a, b) = (b, a + b)
    }

    return b
}

let num: Int = 20

let result: Int = fibonacci(n: num)
print(result)