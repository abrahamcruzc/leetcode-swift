import Foundation

func isPalindrome(_ s: String) -> Bool {

    let filtered = s.lowercased().unicodeScalars.filter(CharacterSet.alphanumerics.contains)

    if filtered.isEmpty { return true }

    var left = filtered.startIndex
    var right = filtered.index(before: filtered.endIndex)

    while left < right {
        if filtered[left] != filtered[right] {
            return false
        }
        left = filtered.index(after: left)
        right = filtered.index(before: right)
    }

    return true
}

print(isPalindrome("A man, a plan, a canal: Panama")) // true
print(isPalindrome("race a car")) // false
print(isPalindrome(" ")) // true