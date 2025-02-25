func areNumbersAscending(_ s: String) -> Bool {
    let words = s.split(separator: " ")

    var lastNum = -1

    for word in words {
        if let num = Int(word) {
            if num <= lastNum {
                return false
            }
            lastNum = num
        }
    }

    return true
}

print(areNumbersAscending("1 box has 3 blue 4 red 6 green and 12 yellow marbles")) // true
print(areNumbersAscending("hello world 5 x 5")) // false
print(areNumbersAscending("sunset is at 7 51 pm overnight lows will be in the low 50 and 60 s")) // false

