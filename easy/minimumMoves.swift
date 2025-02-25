func minimumMoves(_ s: String) -> Int {
    var moves = 0
    var i = 0
    let chars = Array(s)

    while i < chars.count {
        if chars[i] == "X" {
            moves += 1
            i += 3
        } else {
            i += 1
        }
    }

    return moves
}

print(minimumMoves("XXX")) // 1
print(minimumMoves("XX0X")) // 2
print(minimumMoves("0000")) // 0