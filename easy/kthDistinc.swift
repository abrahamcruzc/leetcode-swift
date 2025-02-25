func kthDistinct(_ arr: [String], _ k: Int) -> String {
    var ocurrencias: [String:Int] = [:]

    for str in arr {
        ocurrencias[str, default: 0] += 1
    }

    var count = 0
    for str in arr where ocurrencias[str] == 1 {
        count += 1
        if count == k {
            return str
        }
    }

    return ""
}

print(kthDistinct(["d","b","c","b","c","a"], 2)) // a
print(kthDistinct(["aaa","aa","a"], 1)) // aaa
print(kthDistinct(["a","b","a"], 3)) //