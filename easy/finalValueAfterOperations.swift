func finalValueAfterOperations(_ operations: [String]) -> Int {
    var x = 0

    for operation in operations {
        switch operation {
        case "++X", "X++":
            x += 1
        case "--X", "X--":
            x -= 1
        default:
            break
        }
    }
    
    return x
}

print(finalValueAfterOperations(["--X","X++","X++"]))