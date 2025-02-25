func mcd(_ a: Int, _ b: Int) -> Int {
    var (a, b) = (a, b)
    while b != 0 {
        (a, b) = (b, a % b)
    }

    return a
}

func mcm(_ a: Int, _ b: Int) -> Int {
    return abs(a * b) / mcd(a, b)
}

func mcm(of array: [Int]) -> Int {
    guard !array.isEmpty else { return 0}
    
    var result = array[0]
    for number in array.dropFirst() {
        result = mcm(result, number)
    }

    return result
}

func mcd(of array: [Int]) -> Int {
    guard !array.isEmpty else {return 0}

    var result = array[0]
    for number in array.dropFirst() {
        result = mcd(result, number)
    }
    
    return result
}

func getTotalX(a: [Int], b: [Int]) -> Int {

    let mcmA = mcm(of: a)

    let mcdB = mcd(of: b)

    if mcmA > mcdB {
        return 0
    }

    var count = 0
    for x in stride(from: mcmA, through: mcdB, by: mcmA) {
        if mcdB % x == 0 {
            count += 1
        }
    }

    return count
}


let a = [2, 4]
let b = [16, 32, 96]

let result = getTotalX(a: a, b: b)
print("Número de enteros que cumplen las condiciones: \(result)")